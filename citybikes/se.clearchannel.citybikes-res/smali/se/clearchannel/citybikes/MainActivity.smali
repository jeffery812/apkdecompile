.class public Lse/clearchannel/citybikes/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Landroid/support/v7/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/clearchannel/citybikes/MainActivity$DownloadOfflineMapTask;,
        Lse/clearchannel/citybikes/MainActivity$PlaceholderFragment;,
        Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;
    }
.end annotation


# static fields
.field static context:Lse/clearchannel/citybikes/MainActivity;

.field public static fragmentManager:Landroid/support/v4/app/FragmentManager;


# instance fields
.field mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

.field mViewPager:Landroid/support/v4/view/ViewPager;

.field mapFragment:Lse/clearchannel/citybikes/CityBikesMapFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lse/clearchannel/citybikes/MainActivity;->mapFragment:Lse/clearchannel/citybikes/CityBikesMapFragment;

    .line 298
    return-void
.end method

.method private DownLoadOfflineMaps()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lse/clearchannel/citybikes/MainActivity$DownloadOfflineMapTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lse/clearchannel/citybikes/MainActivity$DownloadOfflineMapTask;-><init>(Lse/clearchannel/citybikes/MainActivity;Lse/clearchannel/citybikes/MainActivity$1;)V

    .line 295
    .local v0, downloadOfflineMapTask:Lse/clearchannel/citybikes/MainActivity$DownloadOfflineMapTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lse/clearchannel/citybikes/MainActivity$DownloadOfflineMapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    return-void
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 313
    const-string v1, "VERSION_UNKNOWN"

    .line 315
    .local v1, versionName:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lse/clearchannel/citybikes/MainActivity;->context:Lse/clearchannel/citybikes/MainActivity;

    invoke-virtual {v2}, Lse/clearchannel/citybikes/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lse/clearchannel/citybikes/MainActivity;->context:Lse/clearchannel/citybikes/MainActivity;

    invoke-virtual {v3}, Lse/clearchannel/citybikes/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android CityBikes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, userAgentString:Ljava/lang/String;
    return-object v0

    .line 320
    .end local v0           #userAgentString:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected isPlayServicesAvailable()Z
    .locals 3

    .prologue
    .line 101
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 103
    .local v1, status:I
    if-nez v1, :cond_0

    .line 104
    const/4 v2, 0x1

    .line 110
    :goto_0
    return v2

    .line 106
    :cond_0
    const/16 v2, 0xa

    invoke-static {v1, p0, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 107
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 110
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .parameter "dataBundle"

    .prologue
    .line 120
    invoke-virtual {p0}, Lse/clearchannel/citybikes/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 122
    .local v0, actionBar:Landroid/support/v7/app/ActionBar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 123
    new-instance v2, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;-><init>(Lse/clearchannel/citybikes/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    .line 126
    const v2, 0x7f080040

    invoke-virtual {p0, v2}, Lse/clearchannel/citybikes/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 127
    iget-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lse/clearchannel/citybikes/MainActivity;->mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 131
    iget-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 132
    iget-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lse/clearchannel/citybikes/MainActivity$2;

    invoke-direct {v3, p0, v0}, Lse/clearchannel/citybikes/MainActivity$2;-><init>(Lse/clearchannel/citybikes/MainActivity;Landroid/support/v7/app/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 141
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    invoke-virtual {v2}, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    iget-object v3, p0, Lse/clearchannel/citybikes/MainActivity;->mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    invoke-virtual {v3, v1}, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sput-object p0, Lse/clearchannel/citybikes/MainActivity;->context:Lse/clearchannel/citybikes/MainActivity;

    .line 57
    invoke-static {}, Lse/clearchannel/citybikes/locations/LocationProvider;->getInstance()Lse/clearchannel/citybikes/locations/LocationProvider;

    move-result-object v2

    invoke-virtual {v2}, Lse/clearchannel/citybikes/locations/LocationProvider;->resetLocations()V

    .line 58
    const v2, 0x7f030018

    invoke-virtual {p0, v2}, Lse/clearchannel/citybikes/MainActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lse/clearchannel/citybikes/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sput-object v2, Lse/clearchannel/citybikes/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 62
    invoke-virtual {p0}, Lse/clearchannel/citybikes/MainActivity;->isPlayServicesAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lse/clearchannel/citybikes/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 65
    .local v0, actionBar:Landroid/support/v7/app/ActionBar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 66
    new-instance v2, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;-><init>(Lse/clearchannel/citybikes/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    .line 69
    const v2, 0x7f080040

    invoke-virtual {p0, v2}, Lse/clearchannel/citybikes/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 70
    iget-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lse/clearchannel/citybikes/MainActivity;->mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 74
    iget-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 75
    iget-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lse/clearchannel/citybikes/MainActivity$1;

    invoke-direct {v3, p0, v0}, Lse/clearchannel/citybikes/MainActivity$1;-><init>(Lse/clearchannel/citybikes/MainActivity;Landroid/support/v7/app/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 84
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lse/clearchannel/citybikes/MainActivity;->mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    invoke-virtual {v2}, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    iget-object v3, p0, Lse/clearchannel/citybikes/MainActivity;->mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    invoke-virtual {v3, v1}, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0           #actionBar:Landroid/support/v7/app/ActionBar;
    .end local v1           #i:I
    :cond_0
    invoke-direct {p0}, Lse/clearchannel/citybikes/MainActivity;->DownLoadOfflineMaps()V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lse/clearchannel/citybikes/MainActivity;->mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-virtual {v0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->destroyView()V

    .line 180
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 181
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lse/clearchannel/citybikes/MainActivity;->context:Lse/clearchannel/citybikes/MainActivity;

    const-string v1, "Disconnected from location services. Please re-connect."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 116
    return-void
.end method

.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "fragmentTransaction"

    .prologue
    .line 175
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "fragmentTransaction"

    .prologue
    .line 166
    iget-object v0, p0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 167
    return-void
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "fragmentTransaction"

    .prologue
    .line 171
    return-void
.end method

.method public switchToMapTab(Lse/clearchannel/citybikes/locations/BikeLocation;)V
    .locals 3
    .parameter "bl"

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-object v1, p0, Lse/clearchannel/citybikes/MainActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 251
    iget-object v1, p0, Lse/clearchannel/citybikes/MainActivity;->mSectionsPagerAdapter:Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;

    invoke-virtual {v1, v2}, Lse/clearchannel/citybikes/MainActivity$SectionsPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lse/clearchannel/citybikes/CityBikesMapFragment;

    .line 252
    .local v0, fragment:Lse/clearchannel/citybikes/CityBikesMapFragment;
    invoke-virtual {v0, p1}, Lse/clearchannel/citybikes/CityBikesMapFragment;->zoomToBikelocation(Lse/clearchannel/citybikes/locations/BikeLocation;)V

    .line 254
    return-void
.end method
