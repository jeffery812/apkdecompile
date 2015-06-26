.class Lse/clearchannel/citybikes/ServiceFragment$2;
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
    .line 160
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$2;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 164
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lse/clearchannel/citybikes/ServiceFragment$2;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v1}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0034

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 176
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lse/clearchannel/citybikes/ServiceFragment$2;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #calls: Lse/clearchannel/citybikes/ServiceFragment;->getOutputMediaFileUri(I)Landroid/net/Uri;
    invoke-static {v3}, Lse/clearchannel/citybikes/ServiceFragment;->access$100(I)Landroid/net/Uri;

    move-result-object v2

    #setter for: Lse/clearchannel/citybikes/ServiceFragment;->fileUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lse/clearchannel/citybikes/ServiceFragment;->access$002(Lse/clearchannel/citybikes/ServiceFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 171
    const-string v1, "output"

    iget-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment$2;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    #getter for: Lse/clearchannel/citybikes/ServiceFragment;->fileUri:Landroid/net/Uri;
    invoke-static {v2}, Lse/clearchannel/citybikes/ServiceFragment;->access$000(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lse/clearchannel/citybikes/ServiceFragment$2;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v1}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment$2;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-virtual {v2}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 175
    iget-object v1, p0, Lse/clearchannel/citybikes/ServiceFragment$2;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lse/clearchannel/citybikes/ServiceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
