.class final Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;
.super Ljava/lang/Object;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FlashJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/VideoActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->this$0:Lbbc/mobile/news/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;)Lbbc/mobile/news/VideoActivity;
    .locals 1
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->this$0:Lbbc/mobile/news/VideoActivity;

    return-object v0
.end method


# virtual methods
.method public onLoad()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->this$0:Lbbc/mobile/news/VideoActivity;

    iget-object v0, v0, Lbbc/mobile/news/VideoActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface$1;

    invoke-direct {v1, p0}, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface$1;-><init>(Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    return-void
.end method
