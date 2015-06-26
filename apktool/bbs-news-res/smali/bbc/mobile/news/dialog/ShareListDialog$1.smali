.class Lbbc/mobile/news/dialog/ShareListDialog$1;
.super Ljava/lang/Object;
.source "ShareListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/dialog/ShareListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/dialog/ShareListDialog;


# direct methods
.method constructor <init>(Lbbc/mobile/news/dialog/ShareListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/dialog/ShareListDialog$1;->this$0:Lbbc/mobile/news/dialog/ShareListDialog;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog$1;->this$0:Lbbc/mobile/news/dialog/ShareListDialog;

    iget-object v0, v0, Lbbc/mobile/news/dialog/ShareListDialog;->mOnToggleListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog$1;->this$0:Lbbc/mobile/news/dialog/ShareListDialog;

    iget-object v0, v0, Lbbc/mobile/news/dialog/ShareListDialog;->mOnToggleListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 84
    :cond_0
    return-void
.end method
