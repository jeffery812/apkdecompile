.class Lbbc/mobile/news/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/VideoActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lbbc/mobile/news/VideoActivity$2;->this$0:Lbbc/mobile/news/VideoActivity;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 191
    iget-object v0, p0, Lbbc/mobile/news/VideoActivity$2;->this$0:Lbbc/mobile/news/VideoActivity;

    invoke-virtual {v0}, Lbbc/mobile/news/VideoActivity;->finish()V

    .line 192
    return-void
.end method
