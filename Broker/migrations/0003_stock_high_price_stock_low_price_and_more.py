# Generated by Django 4.1 on 2023-01-02 13:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("Broker", "0002_stock_trade_stock_profit_loss_stock_portfolio"),
    ]

    operations = [
        migrations.AddField(
            model_name="stock", name="high_price", field=models.FloatField(null=True),
        ),
        migrations.AddField(
            model_name="stock", name="low_price", field=models.FloatField(null=True),
        ),
        migrations.AlterField(
            model_name="stock", name="EOD_Price", field=models.FloatField(null=True),
        ),
        migrations.AlterField(
            model_name="stock",
            name="Expected_Price",
            field=models.FloatField(null=True),
        ),
    ]
