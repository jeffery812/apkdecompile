.class public final Lcom/google/ads/interactivemedia/v3/b/b/c;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a(IF)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
