.class Lbbc/mobile/news/dialog/ShareListDialog$2;
.super Ljava/lang/Object;
.source "ShareListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/dialog/ShareListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/dialog/ShareListDialog;


# direct methods
.method constructor <init>(Lbbc/mobile/news/dialog/ShareListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/dialog/ShareListDialog$2;->this$0:Lbbc/mobile/news/dialog/ShareListDialog;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog$2;->this$0:Lbbc/mobile/news/dialog/ShareListDialog;

    iget-object v0, v0, Lbbc/mobile/news/dialog/ShareListDialog;->mOnItemListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lbbc/mobile/news/dialog/ShareListDialog$2;->this$0:Lbbc/mobile/news/dialog/ShareListDialog;

    iget-object v0, v0, Lbbc/mobile/news/dialog/ShareListDialog;->mOnItemListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 95
    :cond_0
    return-void
.end method
