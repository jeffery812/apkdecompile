.class public Lbbc/mobile/news/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# instance fields
.field private final mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

.field private mConnnectivityReciever:Landroid/content/BroadcastReceiver;

.field private final mHasActionBar:Z

.field private mPushCallback:Lio/boxcar/push/BXCCallback;

.field private mPushPref:Landroid/preference/CheckBoxPreference;

.field private mSharedPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 31
    invoke-static {p0}, Lbbc/mobile/news/actionbar/ActionBarHelper;->createInstance(Landroid/app/Activity;)Lbbc/mobile/news/actionbar/ActionBarHelper;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/SettingsActivity;->mHasActionBar:Z

    .line 168
    new-instance v0, Lbbc/mobile/news/SettingsActivity$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/SettingsActivity$1;-><init>(Lbbc/mobile/news/SettingsActivity;)V

    iput-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mConnnectivityReciever:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v0, Lbbc/mobile/news/SettingsActivity$2;

    invoke-direct {v0, p0}, Lbbc/mobile/news/SettingsActivity$2;-><init>(Lbbc/mobile/news/SettingsActivity;)V

    iput-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mSharedPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 203
    new-instance v0, Lbbc/mobile/news/SettingsActivity$3;

    invoke-direct {v0, p0}, Lbbc/mobile/news/SettingsActivity$3;-><init>(Lbbc/mobile/news/SettingsActivity;)V

    iput-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mPushCallback:Lio/boxcar/push/BXCCallback;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/SettingsActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Lbbc/mobile/news/SettingsActivity;->resetPushPrefState()V

    return-void
.end method

.method private resetPushPrefState()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;

    sget v1, Lbbc/mobile/news/R$string;->pref_summary_push_notifications:I

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 201
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .parameter "newBase"

    .prologue
    .line 98
    new-instance v0, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;

    invoke-direct {v0, p1}, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;-><init>(Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method protected getActionBarHelper()Lbbc/mobile/news/actionbar/ActionBarHelper;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->getMenuInflater(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lbbc/mobile/news/BaseActivity;->lollipopUIChanges(Landroid/app/Activity;Z)V

    .line 47
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/stats/Stats;->logSettingsPAGEVIEW()Lbbc/mobile/news/stats/Stats;

    .line 49
    sget v0, Lbbc/mobile/news/R$xml;->preferences:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/SettingsActivity;->addPreferencesFromResource(I)V

    .line 51
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->isInGoogleMarket()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lbbc/mobile/news/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 53
    sget v1, Lbbc/mobile/news/R$string;->pref_notifications:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    :goto_0
    return-void

    .line 56
    :cond_0
    sget v0, Lbbc/mobile/news/R$string;->pref_key_push_notifications_enabled:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;

    .line 57
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lbbc/mobile/news/SettingsActivity$4;

    invoke-direct {v1, p0}, Lbbc/mobile/news/SettingsActivity$4;-><init>(Lbbc/mobile/news/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 117
    invoke-virtual {p0}, Lbbc/mobile/news/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 118
    .local v0, inflater:Landroid/view/MenuInflater;
    sget v2, Lbbc/mobile/news/R$menu;->options_menu_no_menus:I

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, retValue:Z
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 121
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    invoke-virtual {v2, p1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 122
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 251
    invoke-static {p0}, Lbbc/mobile/news/BaseActivity;->startHomeScreen(Landroid/app/Activity;)V

    .line 253
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 239
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->isInGoogleMarket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mPushCallback:Lio/boxcar/push/BXCCallback;

    invoke-static {v0}, Lbbc/mobile/news/push/PushUtils;->unregisterCallback(Lio/boxcar/push/BXCCallback;)V

    .line 241
    invoke-virtual {p0}, Lbbc/mobile/news/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lbbc/mobile/news/SettingsActivity;->mSharedPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 243
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mConnnectivityReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 245
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 104
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 137
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->isInGoogleMarket()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity;->mConnnectivityReciever:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v2, v3}, Lbbc/mobile/news/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Lbbc/mobile/news/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 141
    iget-object v3, p0, Lbbc/mobile/news/SettingsActivity;->mSharedPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 142
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity;->mPushCallback:Lio/boxcar/push/BXCCallback;

    invoke-static {v2}, Lbbc/mobile/news/push/PushUtils;->registerCallback(Lio/boxcar/push/BXCCallback;)V

    .line 143
    invoke-static {}, Lio/boxcar/push/BXCFacade;->getState()Lio/boxcar/push/BXCFacade$PushState;

    move-result-object v1

    .line 144
    .local v1, state:Lio/boxcar/push/BXCFacade$PushState;
    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->registering:Lio/boxcar/push/BXCFacade$PushState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->unregistering:Lio/boxcar/push/BXCFacade$PushState;

    if-ne v1, v2, :cond_4

    .line 145
    :cond_0
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 146
    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->registering:Lio/boxcar/push/BXCFacade$PushState;

    if-ne v1, v2, :cond_3

    .line 147
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;

    sget v3, Lbbc/mobile/news/R$string;->pref_summary_push_notify_registering:I

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 161
    :cond_1
    :goto_0
    invoke-static {p0}, Lbbc/mobile/news/push/PushUtils;->canUsePushBecauseOfAccount(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;

    sget v3, Lbbc/mobile/news/R$string;->pref_summary_push_notify_noaccount:I

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 163
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 166
    .end local v1           #state:Lio/boxcar/push/BXCFacade$PushState;
    :cond_2
    return-void

    .line 149
    .restart local v1       #state:Lio/boxcar/push/BXCFacade$PushState;
    :cond_3
    iget-object v2, p0, Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;

    sget v3, Lbbc/mobile/news/R$string;->pref_summary_push_notify_unregistering:I

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 153
    :cond_4
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->isPushEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 154
    .local v0, pushEnabled:Z
    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->registered:Lio/boxcar/push/BXCFacade$PushState;

    if-ne v1, v2, :cond_5

    if-nez v0, :cond_5

    .line 155
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lbbc/mobile/news/util/GlobalSettings;->setPushEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 157
    :cond_5
    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->unregistered:Lio/boxcar/push/BXCFacade$PushState;

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 158
    invoke-static {p0, v5}, Lbbc/mobile/news/util/GlobalSettings;->setPushEnabled(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 129
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getOrientationsPreferences(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/SettingsActivity;->setRequestedOrientation(I)V

    .line 130
    return-void
.end method
