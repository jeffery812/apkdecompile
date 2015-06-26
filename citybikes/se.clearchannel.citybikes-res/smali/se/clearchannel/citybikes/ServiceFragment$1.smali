.class Lse/clearchannel/citybikes/ServiceFragment$1;
.super Ljava/lang/Object;
.source "ServiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/ServiceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/ServiceFragment;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/ServiceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$1;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 151
    new-instance v0, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;

    iget-object v1, p0, Lse/clearchannel/citybikes/ServiceFragment$1;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;-><init>(Lse/clearchannel/citybikes/ServiceFragment;I)V

    .line 152
    .local v0, dialogFragment:Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;
    iget-object v1, p0, Lse/clearchannel/citybikes/ServiceFragment$1;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v1}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "HEJ"

    invoke-virtual {v0, v1, v2}, Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 153
    return-void
.end method
