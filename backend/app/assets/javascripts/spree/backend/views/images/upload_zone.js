function isValidFileType(file) {
  const allowedExtensions = ['.jpg', '.jpeg', '.png'];
  const extension = `.${file.name.split('.').pop()}`;
  return allowedExtensions.includes(extension.toLowerCase());
}

Spree.Views.Images.UploadZone = Backbone.View.extend({
  events: {
    "dragover" : "onDragOver",
    "dragleave" : "onDragLeave",
    "drop" : "onDrop",
    'change input[type="file"]' : "onFileBrowserSelect"
  },

  upload: function(file) {
    var progressModel = new Spree.Models.ImageUpload({file: file});
  
    if (isValidFileType(file)) {
      this.collection.add(progressModel);
      progressModel.previewFile();
      progressModel.uploadFile();
      var maxImages = this.$el.find('#image_attachment').data('max-images');
      if (maxImages > 0) {
        maxImages--;
        this.$el.find('#image_attachment').data('max-images', maxImages);
        this.$el.find('.from-count').text(parseInt(this.$el.find('.from-count').text())+1)
        this.$el.find('.to-count').text(parseInt(this.$el.find('.to-count').text())-1)
      }
    } else {
      alert('Invalid file type. Please upload only JPG, JPEG, or PNG files.');
    }
  },

  dragClass: 'with-images',

  onDragOver: function(e) {
    this.el.classList.add(this.dragClass);
    e.preventDefault();
  },

  onDragLeave: function() {
    this.el.classList.remove(this.dragClass);
  },

  onDrop: function(e) {
    this.el.classList.remove(this.dragClass);
    e.preventDefault();

    const files = e.originalEvent.dataTransfer.files;
    const maxFiles = this.$el.find('#image_attachment').data('max-images');
    if (files.length > maxFiles) {
      alert(`You can only upload a maximum of ${maxFiles} files at a time.`);
      return;
    }

    _.each(files, this.upload, this);
  },

  onFileBrowserSelect: function(e) {
    _.each(e.target.files, this.upload, this);
  }
});
