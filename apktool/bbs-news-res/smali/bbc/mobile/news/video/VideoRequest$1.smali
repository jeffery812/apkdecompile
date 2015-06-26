.class Lbbc/mobile/news/video/VideoRequest$1;
.super Ljava/lang/Object;
.source "VideoRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/video/VideoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lbbc/mobile/news/video/VideoRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lbbc/mobile/news/video/VideoRequest;
    .locals 2
    .parameter "in"

    .prologue
    .line 163
    new-instance v0, Lbbc/mobile/news/video/VideoRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbbc/mobile/news/video/VideoRequest;-><init>(Landroid/os/Parcel;Lbbc/mobile/news/video/VideoRequest;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbbc/mobile/news/video/VideoRequest$1;->createFromParcel(Landroid/os/Parcel;)Lbbc/mobile/news/video/VideoRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lbbc/mobile/news/video/VideoRequest;
    .locals 1
    .parameter "size"

    .prologue
    .line 168
    new-array v0, p1, [Lbbc/mobile/news/video/VideoRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbbc/mobile/news/video/VideoRequest$1;->newArray(I)[Lbbc/mobile/news/video/VideoRequest;

    move-result-object v0

    return-object v0
.end method
