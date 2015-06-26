.class Lse/clearchannel/citybikes/CityBikesMapFragment$4;
.super Ljava/lang/Object;
.source "CityBikesMapFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/CityBikesMapFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$4;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 324
    packed-switch p2, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 326
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$4;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-virtual {v1}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$4;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    #getter for: Lse/clearchannel/citybikes/CityBikesMapFragment;->mCities:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lse/clearchannel/citybikes/CityBikesMapFragment;->access$200(Lse/clearchannel/citybikes/CityBikesMapFragment;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lse/clearchannel/citybikes/CityBikesMapFragment$4$1;

    invoke-direct {v3, p0}, Lse/clearchannel/citybikes/CityBikesMapFragment$4$1;-><init>(Lse/clearchannel/citybikes/CityBikesMapFragment$4;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
