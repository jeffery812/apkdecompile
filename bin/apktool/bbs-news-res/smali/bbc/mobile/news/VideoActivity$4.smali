.class Lbbc/mobile/news/VideoActivity$4;
.super Landroid/webkit/WebChromeClient;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/VideoActivity;->setWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/VideoActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/VideoActivity$4;->this$0:Lbbc/mobile/news/VideoActivity;

    .line 317
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method
