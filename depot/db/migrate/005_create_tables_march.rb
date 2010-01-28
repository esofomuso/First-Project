class CreateTablesMarch < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.column :volume,           :integer
      t.column :year,             :string
      t.column :season,           :string
      t.column :issue_number,     :integer
      t.column :publish_period,   :string
      t.column :active,           :boolean
	  t.column :cover_photo_id,   :integer
    end
	
	create_table :articles do |t|
      t.column :title,        :string
      t.column :subtitle,     :string
      t.column :body,         :text
      t.column :extended,     :text
      t.column :active,       :boolean
      t.column :issue_id,     :integer
	  t.column :lead_photo_id, :integer
	  t.column :featured, 	  :boolean
	  t.column :permalink, 	  :string
	  t.column :lead_photo_id, :integer
    end
	
	create_table :authors do |t|
      t.column :name,     :string
	  t.column :permalink, :string
    end
	
	create_table :article_authors do |t|
      t.column :article_id,     :integer
      t.column :author_id,      :integer
    end
	
	create_table :galleries do |t|
      t.column :name,          :string
      t.column :description,   :text
      t.column :active,        :boolean
      t.column :featured,      :boolean
      t.column :resource_id,   :integer
      t.column :resource_type, :string 
	  t.column :permalink,     :string
    end
	
	create_table :photos do |t|
      t.column :type,             :string
      t.column :caption,          :text
      t.column :active,           :boolean
      t.column :photographer_id,  :integer
    end
	
	create_table :photographers do |t|
      t.column :name,     :string
	  t.column :permalink, :string
    end
	
	create_table :gallery_items do |t|
      t.column :gallery_id,    :integer
      t.column :item_id,   :integer
      t.column :item_type, :string
    end
	
	create_table :categories do |t|
      t.column :name,      :string
      t.column :comment,   :string
    end
	
	create_table :category_items do |t|
      t.column :category_id,    :integer
      t.column :item_id,   :integer
      t.column :item_type, :string
    end
	
	create_table :newsletter_emails do |t|
      t.column :first_name,      :string
	  t.column :last_name,       :string
      t.column :company,         :string
      t.column :address1,        :string
      t.column :address2,        :string
      t.column :city,            :string
      t.column :state,           :string
      t.column :zipcode,         :string
      t.column :phone,           :string
      t.column :phone_ext,       :string
	  t.column :email,           :string
      t.column :active,          :boolean
      t.column :secret_key,      :string
      t.column :created_at,      :datetime
      t.column :updated_at,      :datetime
    end
	
	create_table :newsletter_email_categories do |t|
      t.column :email_id,     :integer
      t.column :category_id,     :integer
      t.column :created_at,   :datetime
      t.column :updated_at,   :datetime
    end
	
	create_table :line_items do |t|
      t.column    :order_id,    :integer, :null => false
      t.column    :product,     :string,  :null => false
      t.column    :quantity,    :integer, :null => false
      t.column    :unit_price,  :decimal, :null => false, :precision => 5, :scale => 2
    end
	
	create_table :orders do |t|
       t.column :ship_to_name,            :string
       t.column :ship_to_address,        :string
       t.column :ship_to_city,            :string
       t.column :ship_to_state,           :string
       t.column :ship_to_zipcode,         :string
       t.column :secret_key,              :string
       t.column :subtotal,                :decimal, :precision => 5, :scale => 2
       t.column :shipping_and_handling,   :decimal, :precision => 5, :scale => 2
       t.column :tax,                     :decimal, :precision => 5, :scale => 2
       t.column :total,                   :decimal, :precision => 5, :scale => 2
       t.column :paypal_receipt_id,       :string
       t.column :paypal_txn_id,           :string
       t.column :status,                  :string
	   t.column :email, 				  :string
       t.column :created_at,              :datetime
       t.column :updated_at,              :datetime
    end
	
	create_table :mail_infos do |t|
      t.string :subject
      t.string :body
      t.string :mail_type
      t.timestamps
    end
  end

  def self.down
    drop_table :issues
	drop_table :articles
	drop_table :authors
	drop_table :article_authors
	drop_table :galleries
	drop_table :photos
	drop_table :photographers
	drop_table :gallery_items
	drop_table :categories
	drop_table :category_items
	drop_table :newsletter_emails
	drop_table :newsletter_email_categories
	drop_table :line_items
	drop_table :orders
	drop_table :mail_infos
	
  end
end
