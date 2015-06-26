.class Lse/clearchannel/citybikes/CityBikesMapFragment$3$1;
.super Ljava/lang/Object;
.source "CityBikesMapFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/CityBikesMapFragment$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lse/clearchannel/citybikes/CityBikesMapFragment$3;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/CityBikesMapFragment$3;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$3$1;->this$1:Lse/clearchannel/citybikes/CityBikesMapFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 247
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$3$1;->this$1:Lse/clearchannel/citybikes/CityBikesMapFragment$3;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment$3;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$3$1;->this$1:Lse/clearchannel/citybikes/CityBikesMapFragment$3;

    iget-object v1, v1, Lse/clearchannel/citybikes/CityBikesMapFragment$3;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    #getter for: Lse/clearchannel/citybikes/CityBikesMapFragment;->mCities:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lse/clearchannel/citybikes/CityBikesMapFragment;->access$200(Lse/clearchannel/citybikes/CityBikesMapFragment;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lse/clearchannel/citybikes/CityBikesMapFragment;->openPDF(Ljava/lang/String;)V

    .line 248
    return-void
.end method
