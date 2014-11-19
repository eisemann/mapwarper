class NepaDocumentsController < ApplicationController

  layout 'application'


  # GET /nepa_documents
  # GET /nepa_documents.xml
  def index
    @nepa_documents = NepaDocument.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nepa_documents }
    end
  end

  # GET /nepa_documents/1
  # GET /nepa_documents/1.xml
  def show
	@nepa_document = NepaDocument.find(params[:id])
	#@nepa_document = NepaDocument.find(params[:map_id])
# @nepa_document = NepaDocument.find(:map_id => 455)
#@nepa_document = #NepaDocument.find(params[:map_id])
#	NepaDocument.all(:conditions => {:map_id => params[:map_id]})

#@ownedMap = Map.find(params[:map_id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nepa_document }
    end
  end

  # GET /nepa_documents/new
  # GET /nepa_documents/new.xml
  def new
    @nepa_document = NepaDocument.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nepa_document }
    end
  end

  # GET /nepa_documents/1/edit
  def edit
    @nepa_document = NepaDocument.find(params[:id])
  end

  # POST /nepa_documents
  # POST /nepa_documents.xml
  def create
    @nepa_document = NepaDocument.new(params[:nepa_document])

    respond_to do |format|
      if @nepa_document.save
        flash[:notice] = 'NepaDocument was successfully created.'
        format.html { redirect_to(@nepa_document) }
        format.xml  { render :xml => @nepa_document, :status => :created, :location => @nepa_document }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nepa_document.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nepa_documents/1
  # PUT /nepa_documents/1.xml
  def update
    @nepa_document = NepaDocument.find(params[:id])

    respond_to do |format|
      if @nepa_document.update_attributes(params[:nepa_document])
        flash[:notice] = 'NepaDocument was successfully updated.'
        format.html { redirect_to(@nepa_document) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nepa_document.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nepa_documents/1
  # DELETE /nepa_documents/1.xml
  def destroy
    @nepa_document = NepaDocument.find(params[:id])
    @nepa_document.destroy

    respond_to do |format|
      format.html { redirect_to(nepa_documents_url) }
      format.xml  { head :ok }
    end
  end
end
