# frozen_string_literal: true

module Spree
  module Admin
    class TemplatesController < ResourceController

    before_action :load_template, only: [:edit, :update, :destroy]

    def index
      @templates = Spree::Template.all
    end

    def new
      @template = Spree::Template.new
    end

    def create
      @template = Spree::Template.new(template_params)
      if @template.save
        redirect_to admin_templates_path, notice: 'Template created successfully'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @template.update(template_params)
        redirect_to admin_templates_path, notice: 'Template updated successfully'
      else
        render :edit
      end
    end

    private

    def template_params
      params.require(:template).permit(:name, :description)
    end

    def load_template
      @template = Spree::Template.find(params[:id])
    end

    end
  end
end
