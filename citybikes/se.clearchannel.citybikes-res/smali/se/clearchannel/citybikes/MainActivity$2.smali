.class Lse/clearchannel/citybikes/MainActivity$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/MainActivity;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/MainActivity;

.field final synthetic val$actionBar:Landroid/support/v7/app/ActionBar;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/MainActivity;Landroid/support/v7/app/ActionBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lse/clearchannel/citybikes/MainActivity$2;->this$0:Lse/clearchannel/citybikes/MainActivity;

    iput-object p2, p0, Lse/clearchannel/citybikes/MainActivity$2;->val$actionBar:Landroid/support/v7/app/ActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 135
    iget-object v0, p0, Lse/clearchannel/citybikes/MainActivity$2;->val$actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 136
    iget-object v0, p0, Lse/clearchannel/citybikes/MainActivity$2;->this$0:Lse/clearchannel/citybikes/MainActivity;

    iget-object v0, v0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 137
    return-void
.end method
