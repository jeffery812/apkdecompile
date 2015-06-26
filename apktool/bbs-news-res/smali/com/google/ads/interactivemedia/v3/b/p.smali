.class public final Lcom/google/ads/interactivemedia/v3/b/p;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "http://s0.2mdn.net/instream/html5/native/native_sdk_v3.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/b/p;->a:Landroid/net/Uri;

    return-void
.end method
