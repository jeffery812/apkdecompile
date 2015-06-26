.class Lbbc/mobile/news/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mInChanged:Z

.field final synthetic this$0:Lbbc/mobile/news/SettingsActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/SettingsActivity$2;->this$0:Lbbc/mobile/news/SettingsActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 188
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity$2;->this$0:Lbbc/mobile/news/SettingsActivity;

    #getter for: Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lbbc/mobile/news/SettingsActivity;->access$0(Lbbc/mobile/news/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbbc/mobile/news/SettingsActivity$2;->mInChanged:Z

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/SettingsActivity$2;->mInChanged:Z

    .line 190
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity$2;->this$0:Lbbc/mobile/news/SettingsActivity;

    #getter for: Lbbc/mobile/news/SettingsActivity;->mPushPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lbbc/mobile/news/SettingsActivity;->access$0(Lbbc/mobile/news/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/SettingsActivity$2;->this$0:Lbbc/mobile/news/SettingsActivity;

    invoke-static {v1}, Lbbc/mobile/news/util/GlobalSettings;->isPushEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lbbc/mobile/news/SettingsActivity$2;->this$0:Lbbc/mobile/news/SettingsActivity;

    #calls: Lbbc/mobile/news/SettingsActivity;->resetPushPrefState()V
    invoke-static {v0}, Lbbc/mobile/news/SettingsActivity;->access$1(Lbbc/mobile/news/SettingsActivity;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/SettingsActivity$2;->mInChanged:Z

    .line 194
    :cond_0
    return-void
.end method
