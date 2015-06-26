.class Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->onLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;


# direct methods
.method constructor <init>(Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface$1;->this$1:Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, command:Ljava/lang/String;
    iget-object v1, p0, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface$1;->this$1:Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;

    #getter for: Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->this$0:Lbbc/mobile/news/VideoActivity;
    invoke-static {v1}, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->access$0(Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;)Lbbc/mobile/news/VideoActivity;

    move-result-object v1

    iget-object v1, v1, Lbbc/mobile/news/VideoActivity;->playlistUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface$1;->this$1:Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;

    #getter for: Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->this$0:Lbbc/mobile/news/VideoActivity;
    invoke-static {v1}, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->access$0(Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;)Lbbc/mobile/news/VideoActivity;

    move-result-object v1

    iget-boolean v1, v1, Lbbc/mobile/news/VideoActivity;->isPlaylistUrl:Z

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface$1;->this$1:Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;

    #getter for: Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->this$0:Lbbc/mobile/news/VideoActivity;
    invoke-static {v1}, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->access$0(Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;)Lbbc/mobile/news/VideoActivity;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface$1;->this$1:Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;

    #getter for: Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->this$0:Lbbc/mobile/news/VideoActivity;
    invoke-static {v2}, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->access$0(Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;)Lbbc/mobile/news/VideoActivity;

    move-result-object v2

    iget-object v2, v2, Lbbc/mobile/news/VideoActivity;->playlistUrl:Ljava/lang/String;

    #calls: Lbbc/mobile/news/VideoActivity;->createCommand(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lbbc/mobile/news/VideoActivity;->access$0(Lbbc/mobile/news/VideoActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_0
    iget-object v1, p0, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface$1;->this$1:Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;

    #getter for: Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->this$0:Lbbc/mobile/news/VideoActivity;
    invoke-static {v1}, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;->access$0(Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;)Lbbc/mobile/news/VideoActivity;

    move-result-object v1

    #calls: Lbbc/mobile/news/VideoActivity;->startFlashPlayback(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lbbc/mobile/news/VideoActivity;->access$1(Lbbc/mobile/news/VideoActivity;Ljava/lang/String;)Z

    .line 471
    return-void
.end method
