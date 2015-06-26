.class Lbbc/mobile/news/video/VideoFragment$6;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/video/VideoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/video/VideoFragment;


# direct methods
.method constructor <init>(Lbbc/mobile/news/video/VideoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/video/VideoFragment$6;->this$0:Lbbc/mobile/news/video/VideoFragment;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 231
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment$6;->this$0:Lbbc/mobile/news/video/VideoFragment;

    #getter for: Lbbc/mobile/news/video/VideoFragment;->mSystemUiHider:Lbbc/mobile/news/video/SystemUiHider;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoFragment;->access$4(Lbbc/mobile/news/video/VideoFragment;)Lbbc/mobile/news/video/SystemUiHider;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/video/SystemUiHider;->toggle()V

    .line 232
    return-void
.end method
