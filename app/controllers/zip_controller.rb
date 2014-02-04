class ZipController < ApplicationController
  require 'rubygems'
  require 'zip'

  def zip_file
    input_filenames = "free_diet2.json"

    zipfile_name = "new-file.zip"

    Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
      zipfile.add(input_filenames, "#{Rails.root}/" + input_filenames)
    end
        
  end
end
