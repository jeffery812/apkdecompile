.class public Lbbc/mobile/news/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSizedBitmapFromDisk(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "file"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    .line 26
    if-nez p0, :cond_0

    move-object v0, v7

    .line 55
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 31
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 32
    .local v6, preSaleOptions:Landroid/graphics/BitmapFactory$Options;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 34
    .local v5, postSaleOptions:Landroid/graphics/BitmapFactory$Options;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 35
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    const/4 v8, 0x0

    invoke-static {v2, v8, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 37
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 39
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8, v9, p1, p2}, Lbbc/mobile/news/util/ImageUtils;->getWidthAndHeightFactor(IIII)I

    move-result v8

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 40
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #inputStream:Ljava/io/InputStream;
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .restart local v2       #inputStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    invoke-static {v2, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 44
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v5           #postSaleOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #preSaleOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 45
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v7

    .line 46
    goto :goto_0

    .line 47
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 48
    .local v3, ioExceptoin:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v7

    .line 49
    goto :goto_0

    .line 50
    .end local v3           #ioExceptoin:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 51
    .local v4, oom:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v7

    .line 52
    goto :goto_0
.end method

.method public static final getWidthAndHeightFactor(IIII)I
    .locals 3
    .parameter "origWidth"
    .parameter "origHeight"
    .parameter "thumbWidth"
    .parameter "thumbHeight"

    .prologue
    .line 16
    div-int v2, p0, p2

    int-to-float v1, v2

    .line 17
    .local v1, widthFactor:F
    div-int v2, p1, p3

    int-to-float v0, v2

    .line 18
    .local v0, heightFactor:F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 19
    float-to-int v2, v1

    .line 21
    :goto_0
    return v2

    :cond_0
    float-to-int v2, v0

    goto :goto_0
.end method
