.class Lbbc/mobile/news/video/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/video/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/video/VideoActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/video/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/video/VideoActivity$2;->this$0:Lbbc/mobile/news/video/VideoActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 112
    iget-object v0, p0, Lbbc/mobile/news/video/VideoActivity$2;->this$0:Lbbc/mobile/news/video/VideoActivity;

    invoke-virtual {v0}, Lbbc/mobile/news/video/VideoActivity;->finish()V

    .line 113
    return-void
.end method
