module Padrino
  module Helpers
    module FormBuilder
      class ActivateFormBuilder < AbstractFormBuilder
                        
        # Text
        
        def id_block(fieldname, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = text_field(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end        
                              
        def text_block(fieldname, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = text_field(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end
        
        def number_block(fieldname, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = number_field(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :step => 'any', :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end     
        
        def email_block(fieldname, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = email_field(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end 

        def url_block(fieldname, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = url_field(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end        
                    
        def password_block(fieldname, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = password_field(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end        
        
        def slug_block(fieldname, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = text_field(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?} slug", :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end        
        
        def text_area_block(fieldname, rows: 10, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = text_area(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :rows => rows, :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end
                
        def wysiwyg_block(fieldname, rows: 10, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = text_area(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?} wysiwyg", :rows => rows, :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end    
        
        def color_block(fieldname, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = text_field(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?} colorpicker", :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)           
        end
        
        # Selects and checkboxes

        def check_box_block(fieldname, required: false, disabled: false, tip: nil, hint: nil, container_class: 'checkbox', label_class: nil, div_class: nil)
          content = check_box(fieldname, :class => "form-check-input #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :required => (r = required || model_required(fieldname)), :disabled => disabled)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end
                        
        def select_block(fieldname, options: model.send(fieldname.to_s.pluralize), selected: object.send(fieldname), required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = select(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :options => options, :selected => selected, :required => (r = required || model_required(fieldname)), :disabled => disabled)
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end  
        
        def lookup_block(fieldname, lookup_url: nil, placeholder: nil, selected_link: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = hidden_field(fieldname, :class => "#{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?} lookup", :'data-lookup-url' => lookup_url, :placeholder => placeholder, :required => (r = required || model_required(fieldname)), :disabled => disabled)
          content << " #{selected_link}"
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end  
        
        def radio_block(fieldname, options: model.send(fieldname.to_s.pluralize), checked: object.send(fieldname), required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          r = nil
          content = ''          
          options = Hash[*options.map { |x| [x,x] }.flatten] if options.is_a? Array
          options.each { |k,v|
            content << %Q{
              <div class="form-check">
                <label class="form-check-label">
            }
            content << radio_button(fieldname, :class => "form-check-input #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :value => v, :checked => (v == checked), :required => (r = required || model_required(fieldname)), :disabled => disabled)
            content << %Q{
                #{k}
              </label>
            </div>
            }
          }
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end
        
        def check_boxes_block(fieldname, options: model.send(fieldname.to_s.pluralize), checked: [], disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = ''          
          options = Hash[*options.map { |x| [x,x] }.flatten] if options.is_a? Array
          options.each { |k,v|
            content << %Q{
              <div class="form-check">
               <label class="form-check-label"> 
            }                       
            content << %Q{<input class="form-check-input" type="checkbox" name="#{model.to_s.underscore}[#{fieldname}][]" value="#{v}" #{'checked="checked"' if checked.include?(v)} #{'disabled="disabled"' if disabled}>}
            content << %Q{
                #{k}
              </label>
            </div>
            }
          }
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class)
        end        
        
        # Files and images
        
        def file_block(fieldname, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = ''
          if !object.persisted? or !object.send(fieldname)
            content << file_field(fieldname)
          else         
            content << %Q{
              <div>
                <i class="fa fa-download"></i> <a target="_blank" href="#{object.send(fieldname).url}">#{object.send(fieldname).name}</a>
              </div>          
              <div>
                #{file_field(fieldname, :required => (r = required || model_required(fieldname)), :disabled => disabled)}
              </div>      
              <div>
                Remove #{check_box(:"remove_#{fieldname}", :disabled => disabled)}
              </div>
            }
          end          
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end
        
        def image_block(fieldname, rotate: true, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = ''
          if !object.persisted? or !object.send(fieldname)
            content << file_field(fieldname)
          else          
            url = object.send(fieldname).url
            src = begin; URI.encode(url).gsub('(', '%28').gsub(')', '%29'); rescue; url; end            
            content << %Q{
            <div style="margin-bottom: 1em">
              <a target="_blank" href="#{url}"><img style="max-height: 200px" src="#{src}"></a>
            </div>
            <div>
              #{file_field(fieldname, :required => (r = required || model_required(fieldname)), :disabled => disabled)}
            </div>
            }
            if object.respond_to?(:"rotate_#{fieldname}_by") and rotate
              content << %Q{                  
                <div class="input-group" style="width: 13em">              
                  <span style="display: table-cell">Rotate by</span>
                  #{select(:"rotate_#{fieldname}_by", :options => ['','90','180','270'], :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :disabled => disabled)}
                  <span class="input-group-addon">&deg;</span>
                </div>               
              }
            end
            content << %Q{
              <div>
                Remove #{check_box(:"remove_#{fieldname}", :disabled => disabled)}
              </div>
            }       
          end    
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end         
        
        # Dates and times
                
        def date_block(fieldname, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = text_field(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?} datepicker", :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder, :value => (if v = object.send(fieldname); v.strftime('%Y-%m-%d'); end))
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end
        
        def datetime_block(fieldname, placeholder: nil, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = text_field(fieldname, :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?} datetimepicker", :required => (r = required || model_required(fieldname)), :disabled => disabled, :placeholder => placeholder, :value => (if v = object.send(fieldname); v.strftime('%Y-%m-%d %H:%M'); end))
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end           
                                                
        # Geopicker
        
        def geopicker_block(fieldname, required: false, disabled: false, tip: nil, hint: nil, container_class: 'form-group', label_class: nil, div_class: nil)
          content = ''
          content << %Q{<div class="geopicker">}
          content << @template.hidden_field_tag("#{model.to_s.underscore}[#{fieldname}][lat]", :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :required => (r = required || model_required(fieldname)), :disabled => disabled, :value => (object.send(fieldname)[1] if object.send(fieldname)))
          content << ' '
          content << @template.hidden_field_tag("#{model.to_s.underscore}[#{fieldname}][lng]", :class => "form-control #{'is-invalid' if !error_message_on(fieldname.to_s.gsub('_id','')).blank?}", :required => (r = required || model_required(fieldname)), :disabled => disabled, :value => (object.send(fieldname)[0] if object.send(fieldname)))
          content << %Q{</div>}                   
          block_layout(fieldname, content, tip: tip, hint: hint, container_class: container_class, label_class: label_class, div_class: div_class, required: r)
        end      
                
        # Submission
        
        def submit_block(button_text: nil, destroy_url: nil, container_class: nil, div_class: nil)
          button_text = object.new_record? ? "Create #{model.to_s.underscore.humanize.downcase}" : "Update #{model.to_s.underscore.humanize.downcase}" if !button_text
          content = %Q{
            <div class="#{container_class}">
              <div class="#{div_class}">
                <button class="btn btn-primary" type="submit">#{button_text}</button> }
          if !object.new_record? and destroy_url
            content << %Q{<a class="btn btn-danger" data-confirm="Are you sure you want to delete this #{model.to_s.underscore.humanize.downcase}?" href="#{destroy_url}">Delete</a>}
          end
          content << %Q{
              </div>
            </div>
          }
        end
        
        # Block layout
        
        def block_layout(fieldname, content, tip: nil, hint: nil, container_class: nil, label_class: nil, div_class: nil, required: nil)
                   
          tip = if tip
            tip
          elsif object.new_record? and model.respond_to?(:new_tips) and model.new_tips[fieldname]
            model.new_tips[fieldname]
          elsif !object.new_record? and model.respond_to?(:edit_tips) and model.edit_tips[fieldname]
            model.edit_tips[fieldname]
          end
          tip_html = tip ? "
            <i id=\"tip-#{fieldname}\" class=\"fa fa-question-circle\" title=\"#{tip}\"></i>
            <script>
              $(function() {
                $('#tip-#{fieldname}').tooltip({placement: 'right'});
            });
            </script>
          " : nil      
          
          hint = if hint
            hint
          elsif object.new_record? and model.respond_to?(:new_hints) and model.new_hints[fieldname]
            model.new_hints[fieldname]
          elsif !object.new_record? and model.respond_to?(:edit_hints) and model.edit_hints[fieldname]
            model.edit_hints[fieldname]
          end   
          hint_html = hint ? %Q{
                <small class="form-text text-muted">#{hint}</small>
          } : nil 
          
          error_html = !error_message_on(fieldname.to_s.gsub('_id','')).blank? ? 
            %Q{
                <div class="invalid-feedback">#{error_message_on fieldname.to_s.gsub('_id',''), :prepend => model.human_attribute_name(fieldname)}</div>
          } : nil
                  
          if container_class and container_class.include?('checkbox')
            block = %Q{
            <div class="#{container_class}">
              #{content}
              <label for="#{model.to_s.underscore}_#{fieldname}" class="#{label_class}">                
                #{model.human_attribute_name(fieldname)}#{'*' if required}
                #{tip_html}
                #{error_html}
                #{hint_html}
              </label>
              </div>
            }
          else
            block = %Q{
            <div class="#{container_class}">
              <label for="#{model.to_s.underscore}_#{fieldname}" class="#{label_class}">
                #{model.human_attribute_name(fieldname)}#{'*' if required}
                #{tip_html}
              </label>
              <div class="#{div_class}">
                #{content}
                #{error_html}
                #{hint_html}
              </div>
            </div>
            }
          end
          block          
        end          
        
        protected
        
        def model
          object.class
        end        
        
        def model_required(fieldname)
          model._validators[fieldname] && model._validators[fieldname].any? { |validator| validator.class.to_s.include?('PresenceValidator') && validator.options.empty? }
        end
                
      end
    end
  end
end

