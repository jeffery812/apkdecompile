.class Lbbc/mobile/news/NewsFragment$3;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/NewsFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/NewsFragment;


# direct methods
.method constructor <init>(Lbbc/mobile/news/NewsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/NewsFragment$3;->this$0:Lbbc/mobile/news/NewsFragment;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 274
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment$3;->this$0:Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v0}, Lbbc/mobile/news/NewsFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->onEditButtonClicked()V

    .line 275
    return-void
.end method
