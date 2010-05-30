xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8" 
xml.Workbook({
  'xmlns'      => "urn:schemas-microsoft-com:office:spreadsheet", 
  'xmlns:o'    => "urn:schemas-microsoft-com:office:office",
  'xmlns:x'    => "urn:schemas-microsoft-com:office:excel",    
  'xmlns:html' => "http://www.w3.org/TR/REC-html40",
  'xmlns:ss'   => "urn:schemas-microsoft-com:office:spreadsheet" 
  }) do

  xml.Worksheet 'ss:Name' => 'Listagem de Produtos Cadastrados' do
    xml.Table do

      # Header
      xml.Row do
          xml.Cell { xml.Data 'ID', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Name', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Preço de compra', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Quantiade estocada', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Quantidade mínima', 'ss:Type' => 'String' }
          xml.Cell { xml.Data 'Categoria', 'ss:Type' => 'String' }
      end

      # Rows
      for product in @products
        xml.Row do
            xml.Cell { xml.Data product.id, 'ss:Type' => 'Number' }
            xml.Cell { xml.Data product.name, 'ss:Type' => 'String' }
            xml.Cell { xml.Data product.bought_price, 'ss:Type' => 'Number' }
            xml.Cell { xml.Data product.stock_ammount, 'ss:Type' => 'Number' }
            xml.Cell { xml.Data product.stock_minimum, 'ss:Type' => 'Number' }
            xml.Cell { xml.Data product.brand_id, 'ss:Type' => 'String' }
        end
      end

    end
  end
end
