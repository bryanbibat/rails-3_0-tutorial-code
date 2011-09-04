class MessagesController < ApplicationController
  # GET /messages
  # GET /messages.xml
  def index
    @message = Message.new
    @messages = Message.order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @messages }
    end
  end

  def message_table
    respond_to do |format|
      format.js do
        render :update do |page|
          page.replace_html :message_list, :partial => Message.order("created_at DESC")
        end
      end
      format.html { render :partial => Message.order("created_at DESC") }
    end
  end

  # POST /messages
  # POST /messages.xml
  def create
    @message = Message.new(params[:message])

    respond_to do |format|
      if @message.save
        format.html { redirect_to(messages_path, :notice => 'Message was successfully created.') }
        format.xml  { render :xml => @message, :status => :created, :location => @message }
        format.js do
          render :update do |page|
            page.replace_html :message_list,
              :partial => Message.all(:order => "created_at DESC")
            page.replace_html :notice, 'Message was successfully created.'
            page[:new_message].reset
          end
        end
      else
        @messages = Message.order("created_at DESC")
        format.html { render :action => "index" }
        format.xml  { render :xml => @message.errors, :status => :unprocessable_entity }
        format.js do
          render :update do |page|
            page.replace_html :notice, 'There was an error in creating the message.'
          end
        end
      end
    end
  end

end