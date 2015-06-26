.class public Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/MainActivity;


# direct methods
.method public constructor <init>(Lse/clearchannel/citybikes/MainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter "fm"

    .prologue
    .line 189
    iput-object p1, p0, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->this$0:Lse/clearchannel/citybikes/MainActivity;

    .line 190
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 191
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 208
    new-instance v0, Lse/clearchannel/citybikes/AboutFragment;

    invoke-direct {v0}, Lse/clearchannel/citybikes/AboutFragment;-><init>()V

    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    new-instance v0, Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-direct {v0}, Lse/clearchannel/citybikes/CityBikesMapFragment;-><init>()V

    goto :goto_0

    .line 202
    :pswitch_1
    new-instance v0, Lse/clearchannel/citybikes/StationListFragment;

    invoke-direct {v0}, Lse/clearchannel/citybikes/StationListFragment;-><init>()V

    goto :goto_0

    .line 204
    :pswitch_2
    new-instance v0, Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {v0}, Lse/clearchannel/citybikes/ServiceFragment;-><init>()V

    goto :goto_0

    .line 206
    :pswitch_3
    new-instance v0, Lse/clearchannel/citybikes/AboutFragment;

    invoke-direct {v0}, Lse/clearchannel/citybikes/AboutFragment;-><init>()V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 238
    instance-of v0, p1, Lse/clearchannel/citybikes/CityBikesMapFragment;

    if-eqz v0, :cond_0

    .line 240
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "position"

    .prologue
    .line 222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 223
    .local v0, l:Ljava/util/Locale;
    packed-switch p1, :pswitch_data_0

    .line 233
    const-string v1, "Section X"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 225
    :pswitch_0
    iget-object v1, p0, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->this$0:Lse/clearchannel/citybikes/MainActivity;

    const v2, 0x7f0b0042

    invoke-virtual {v1, v2}, Lse/clearchannel/citybikes/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v1, p0, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->this$0:Lse/clearchannel/citybikes/MainActivity;

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Lse/clearchannel/citybikes/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v1, p0, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->this$0:Lse/clearchannel/citybikes/MainActivity;

    const v2, 0x7f0b0054

    invoke-virtual {v1, v2}, Lse/clearchannel/citybikes/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v1, p0, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->this$0:Lse/clearchannel/citybikes/MainActivity;

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Lse/clearchannel/citybikes/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
