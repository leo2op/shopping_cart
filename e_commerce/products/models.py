from django.db import models

class Products(models.Model):
    p_id = models.AutoField(primary_key=True)
    p_name = models.CharField(max_length=100)
    p_price = models.IntegerField()
    p_image = models.ImageField(upload_to='product_images/')  # Add this line for the image field

    class Meta:
        managed = False
        db_table = 'products'
