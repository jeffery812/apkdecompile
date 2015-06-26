.class Lbbc/mobile/news/actionbar/ActionBarHelperBase$1;
.super Ljava/lang/Object;
.source "ActionBarHelperBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/actionbar/ActionBarHelperBase;->addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/actionbar/ActionBarHelperBase;

.field private final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lbbc/mobile/news/actionbar/ActionBarHelperBase;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase$1;->this$0:Lbbc/mobile/news/actionbar/ActionBarHelperBase;

    iput-object p2, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase$1;->val$item:Landroid/view/MenuItem;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 224
    iget-object v0, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase$1;->this$0:Lbbc/mobile/news/actionbar/ActionBarHelperBase;

    iget-object v0, v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase$1;->val$item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 225
    return-void
.end method
