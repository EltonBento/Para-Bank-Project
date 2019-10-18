module Helper

    def screenshot(file_name, result)
         #creating the file path
         file_path = "report/screenshots/test_#{result}"
         file = "#{file_path}/#{file_name}.png"
         page.save_screenshot(file)

        #Inserting the image into the report
        embed(file,'image/png','Click here')
    end
    
end