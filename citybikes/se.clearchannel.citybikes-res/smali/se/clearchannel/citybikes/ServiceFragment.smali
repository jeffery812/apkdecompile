.class public Lse/clearchannel/citybikes/ServiceFragment;
.super Landroid/support/v4/app/Fragment;
.source "ServiceFragment.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lse/clearchannel/citybikes/RefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/clearchannel/citybikes/ServiceFragment$CBDialogFragment;,
        Lse/clearchannel/citybikes/ServiceFragment$ServiceReportTask;,
        Lse/clearchannel/citybikes/ServiceFragment$SortableByDistance;,
        Lse/clearchannel/citybikes/ServiceFragment$DialogButtonClickHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BT_CHAIN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BT_FRONT_TYRE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BT_HANDLE_BARS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BT_LIGHTS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BT_PEDALS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BT_REAR_TYRE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BT_SEAT:I = 0x0

.field private static final CAPTURE_IMAGE_ACTIVITY_REQUEST_CODE:I = 0x64

.field private static final FASTEST_INTERVAL:J = 0x3e8L

.field private static final FASTEST_INTERVAL_IN_SECONDS:I = 0x1

.field private static final LOCK_NUMBER_DIALOG:I = 0x1

.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x2

.field private static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field private static final PROBLEM_DIALOG:I = 0x0

.field private static final TIME_BETWEEN_REPORTS:J = 0x6ddd00L

.field private static final UPDATE_INTERVAL:J = 0x1388L

.field public static final UPDATE_INTERVAL_IN_SECONDS:I = 0x5


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;"
        }
    .end annotation
.end field

.field checkedItems:[Z

.field dialog:Landroid/app/ProgressDialog;

.field private fileUri:Landroid/net/Uri;

.field private locationManager:Landroid/location/LocationManager;

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;"
        }
    .end annotation
.end field

.field private lockNumberButton:Landroid/widget/Button;

.field mLocationClient:Lcom/google/android/gms/location/LocationClient;

.field mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private myLocation:Landroid/location/Location;

.field private otherInfo:Landroid/widget/EditText;

.field private selectButton:Landroid/widget/Button;

.field private selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedItemsContent:Ljava/lang/String;

.field private selectedLockNumber:Ljava/lang/String;

.field private serviceLocationSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 568
    const-string v0, "#B0B0B0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lse/clearchannel/citybikes/ServiceFragment;->BT_REAR_TYRE:I

    .line 569
    const-string v0, "#00FFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lse/clearchannel/citybikes/ServiceFragment;->BT_CHAIN:I

    .line 570
    const-string v0, "#007FFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lse/clearchannel/citybikes/ServiceFragment;->BT_PEDALS:I

    .line 571
    const-string v0, "#7FFF00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lse/clearchannel/citybikes/ServiceFragment;->BT_FRONT_TYRE:I

    .line 572
    const-string v0, "#FFFF00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lse/clearchannel/citybikes/ServiceFragment;->BT_LIGHTS:I

    .line 573
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lse/clearchannel/citybikes/ServiceFragment;->BT_HANDLE_BARS:I

    .line 574
    const-string v0, "#FF0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lse/clearchannel/citybikes/ServiceFragment;->BT_SEAT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    .line 78
    const/16 v0, 0xa

    new-array v0, v0, [Z

    iput-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->checkedItems:[Z

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItemsContent:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumber:Ljava/lang/String;

    .line 653
    return-void
.end method

.method static synthetic access$000(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lse/clearchannel/citybikes/ServiceFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment;->fileUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lse/clearchannel/citybikes/ServiceFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lse/clearchannel/citybikes/ServiceFragment;->resetForm()V

    return-void
.end method

.method static synthetic access$1100(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->lockNumberButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->serviceLocationSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$300(Lse/clearchannel/citybikes/ServiceFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lse/clearchannel/citybikes/ServiceFragment;->selectedItemsNotSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lse/clearchannel/citybikes/ServiceFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumberNotSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lse/clearchannel/citybikes/ServiceFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lse/clearchannel/citybikes/ServiceFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lse/clearchannel/citybikes/ServiceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lse/clearchannel/citybikes/ServiceFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItemsContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lse/clearchannel/citybikes/ServiceFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->otherInfo:Landroid/widget/EditText;

    return-object v0
.end method

.method private addOrRemoveSelected(Ljava/lang/Integer;)V
    .locals 2
    .parameter "index"

    .prologue
    .line 349
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkCameraHardware(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const/4 v0, 0x1

    .line 549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIndexOfItem(Ljava/lang/String;)I
    .locals 5
    .parameter "itemName"

    .prologue
    .line 337
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, errorItems:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 340
    .local v2, selectedItem:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 341
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    move v2, v1

    .line 340
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_1
    return v2
.end method

.method private static getOutputMediaFile(I)Ljava/io/File;
    .locals 5
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 488
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "StockholmCityBikes"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 492
    .local v1, mediaStorageDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-object v0

    .line 500
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, timeStamp:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p0, v3, :cond_2

    .line 503
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IMG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, mediaFile:Ljava/io/File;
    goto :goto_0

    .line 505
    .end local v0           #mediaFile:Ljava/io/File;
    :cond_2
    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    .line 506
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "VID_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #mediaFile:Ljava/io/File;
    goto :goto_0
.end method

.method private static getOutputMediaFileUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "type"

    .prologue
    .line 482
    invoke-static {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private requestAllUpdates()V
    .locals 5

    .prologue
    .line 449
    iget-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 450
    .local v2, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    .local v1, prov:Ljava/lang/String;
    iget-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    iget-object v4, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v3, v4, p0}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    goto :goto_0

    .line 454
    .end local v1           #prov:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private resetForm()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->updateSelectedItems()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumber:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->serviceLocationSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->fileUri:Landroid/net/Uri;

    .line 91
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->otherInfo:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private selectedItemsNotSet()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItemsContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItemsContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectedLockNumberNotSet()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedLockNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHotspotColor(III)I
    .locals 3
    .parameter "hotspotId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 358
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 359
    .local v1, img:Landroid/widget/ImageView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 360
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    .local v0, hotspots:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 362
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-static {}, Lse/clearchannel/citybikes/locations/LocationProvider;->getInstance()Lse/clearchannel/citybikes/locations/LocationProvider;

    move-result-object v3

    invoke-virtual {v3}, Lse/clearchannel/citybikes/locations/LocationProvider;->getLocations()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->locations:Ljava/util/List;

    .line 138
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->locationManager:Landroid/location/LocationManager;

    .line 140
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, mainView:Landroid/view/View;
    const v3, 0x7f08005b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->serviceLocationSpinner:Landroid/widget/Spinner;

    .line 142
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x1090008

    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->locations:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->adapter:Landroid/widget/ArrayAdapter;

    .line 143
    iget-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->adapter:Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 145
    iget-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->serviceLocationSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lse/clearchannel/citybikes/ServiceFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    const v3, 0x7f08005c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->lockNumberButton:Landroid/widget/Button;

    .line 148
    iget-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->lockNumberButton:Landroid/widget/Button;

    new-instance v4, Lse/clearchannel/citybikes/ServiceFragment$1;

    invoke-direct {v4, p0}, Lse/clearchannel/citybikes/ServiceFragment$1;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v3, 0x7f08005e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->otherInfo:Landroid/widget/EditText;

    .line 158
    const v3, 0x7f08005d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 159
    .local v1, photoButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {p0, v3}, Lse/clearchannel/citybikes/ServiceFragment;->checkCameraHardware(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    new-instance v3, Lse/clearchannel/citybikes/ServiceFragment$2;

    invoke-direct {v3, p0}, Lse/clearchannel/citybikes/ServiceFragment$2;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :goto_0
    const v3, 0x7f08005a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectButton:Landroid/widget/Button;

    .line 183
    iget-object v3, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectButton:Landroid/widget/Button;

    new-instance v4, Lse/clearchannel/citybikes/ServiceFragment$3;

    invoke-direct {v4, p0}, Lse/clearchannel/citybikes/ServiceFragment$3;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v3, 0x7f08005f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 192
    .local v2, submitButton:Landroid/widget/Button;
    new-instance v3, Lse/clearchannel/citybikes/ServiceFragment$4;

    invoke-direct {v3, p0}, Lse/clearchannel/citybikes/ServiceFragment$4;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void

    .line 179
    .end local v2           #submitButton:Landroid/widget/Button;
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 434
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image saved to:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment;->fileUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    if-nez p2, :cond_0

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 372
    invoke-direct {p0}, Lse/clearchannel/citybikes/ServiceFragment;->requestAllUpdates()V

    .line 373
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .parameter "connectionResult"

    .prologue
    .line 383
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 267
    if-nez p1, :cond_1

    .line 269
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b004f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x7f05

    new-instance v4, Lse/clearchannel/citybikes/ServiceFragment$5;

    invoke-direct {v4, p0}, Lse/clearchannel/citybikes/ServiceFragment$5;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lse/clearchannel/citybikes/ServiceFragment$DialogButtonClickHandler;

    invoke-direct {v3, p0}, Lse/clearchannel/citybikes/ServiceFragment$DialogButtonClickHandler;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 299
    :cond_0
    :goto_0
    return-object v1

    .line 289
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 292
    const v1, 0x7f050001

    new-instance v2, Lse/clearchannel/citybikes/ServiceFragment$6;

    invoke-direct {v2, p0}, Lse/clearchannel/citybikes/ServiceFragment$6;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 117
    const v2, 0x7f030022

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, mainView:Landroid/view/View;
    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 120
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    :cond_0
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    iput-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 124
    new-instance v2, Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p0, p0}, Lcom/google/android/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    .line 125
    iget-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 128
    iget-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 130
    iget-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 131
    return-object v1
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8
    .parameter "location"

    .prologue
    .line 458
    if-eqz p1, :cond_1

    .line 460
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment;->myLocation:Landroid/location/Location;

    .line 462
    new-instance v2, Landroid/location/Location;

    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment;->myLocation:Landroid/location/Location;

    invoke-direct {v2, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 464
    .local v2, dummyLocation:Landroid/location/Location;
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment;->locations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/clearchannel/citybikes/locations/BikeLocation;

    .line 466
    .local v0, bl:Lse/clearchannel/citybikes/locations/BikeLocation;
    invoke-virtual {v0}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    .line 467
    .local v4, point:Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v5, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 468
    iget-wide v5, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 469
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment;->myLocation:Landroid/location/Location;

    invoke-virtual {v5, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 470
    .local v1, dist:F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Lse/clearchannel/citybikes/locations/BikeLocation;->setDistanceToMyLocation(Ljava/lang/Float;)V

    goto :goto_0

    .line 472
    .end local v0           #bl:Lse/clearchannel/citybikes/locations/BikeLocation;
    .end local v1           #dist:F
    .end local v4           #point:Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment;->locations:Ljava/util/List;

    new-instance v6, Lse/clearchannel/citybikes/ServiceFragment$SortableByDistance;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lse/clearchannel/citybikes/ServiceFragment$SortableByDistance;-><init>(Lse/clearchannel/citybikes/ServiceFragment;Lse/clearchannel/citybikes/ServiceFragment$1;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 473
    iget-object v5, p0, Lse/clearchannel/citybikes/ServiceFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 475
    .end local v2           #dummyLocation:Landroid/location/Location;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 518
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 519
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    .line 531
    :cond_0
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->disconnect()V

    .line 532
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 257
    .local v1, lv:Landroid/widget/ListView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment;->checkedItems:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 258
    iget-object v2, p0, Lse/clearchannel/citybikes/ServiceFragment;->checkedItems:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v0           #i:I
    .end local v1           #lv:Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method public onRefresh(Lse/clearchannel/citybikes/MainActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 368
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 536
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 537
    iget-object v0, p0, Lse/clearchannel/citybikes/ServiceFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->connect()V

    .line 538
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 305
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 306
    .local v2, evX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 308
    .local v3, evY:I
    packed-switch v0, :pswitch_data_0

    .line 332
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->updateSelectedItems()V

    .line 333
    const/4 v6, 0x1

    return v6

    .line 311
    :pswitch_0
    const v6, 0x7f080058

    invoke-virtual {p0, v6, v2, v3}, Lse/clearchannel/citybikes/ServiceFragment;->getHotspotColor(III)I

    move-result v5

    .line 313
    .local v5, touchColor:I
    new-instance v1, Lse/clearchannel/citybikes/ColorTool;

    invoke-direct {v1}, Lse/clearchannel/citybikes/ColorTool;-><init>()V

    .line 314
    .local v1, ct:Lse/clearchannel/citybikes/ColorTool;
    const/16 v4, 0x19

    .line 316
    .local v4, tolerance:I
    sget v6, Lse/clearchannel/citybikes/ServiceFragment;->BT_CHAIN:I

    invoke-virtual {v1, v6, v5, v4}, Lse/clearchannel/citybikes/ColorTool;->closeMatch(III)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 317
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->getIndexOfItem(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->addOrRemoveSelected(Ljava/lang/Integer;)V

    goto :goto_0

    .line 318
    :cond_1
    sget v6, Lse/clearchannel/citybikes/ServiceFragment;->BT_FRONT_TYRE:I

    invoke-virtual {v1, v6, v5, v4}, Lse/clearchannel/citybikes/ColorTool;->closeMatch(III)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->getIndexOfItem(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->addOrRemoveSelected(Ljava/lang/Integer;)V

    goto :goto_0

    .line 320
    :cond_2
    sget v6, Lse/clearchannel/citybikes/ServiceFragment;->BT_HANDLE_BARS:I

    invoke-virtual {v1, v6, v5, v4}, Lse/clearchannel/citybikes/ColorTool;->closeMatch(III)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 321
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->getIndexOfItem(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->addOrRemoveSelected(Ljava/lang/Integer;)V

    goto :goto_0

    .line 322
    :cond_3
    sget v6, Lse/clearchannel/citybikes/ServiceFragment;->BT_LIGHTS:I

    invoke-virtual {v1, v6, v5, v4}, Lse/clearchannel/citybikes/ColorTool;->closeMatch(III)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 323
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->getIndexOfItem(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->addOrRemoveSelected(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 324
    :cond_4
    sget v6, Lse/clearchannel/citybikes/ServiceFragment;->BT_PEDALS:I

    invoke-virtual {v1, v6, v5, v4}, Lse/clearchannel/citybikes/ColorTool;->closeMatch(III)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 325
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b003c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->getIndexOfItem(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->addOrRemoveSelected(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 326
    :cond_5
    sget v6, Lse/clearchannel/citybikes/ServiceFragment;->BT_SEAT:I

    invoke-virtual {v1, v6, v5, v4}, Lse/clearchannel/citybikes/ColorTool;->closeMatch(III)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 327
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b003e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->getIndexOfItem(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->addOrRemoveSelected(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 328
    :cond_6
    sget v6, Lse/clearchannel/citybikes/ServiceFragment;->BT_REAR_TYRE:I

    invoke-virtual {v1, v6, v5, v4}, Lse/clearchannel/citybikes/ColorTool;->closeMatch(III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 329
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->getIndexOfItem(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lse/clearchannel/citybikes/ServiceFragment;->addOrRemoveSelected(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateSelectedItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 397
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f05

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, errorItems:[Ljava/lang/String;
    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 402
    .local v2, first:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_2

    .line 403
    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 404
    if-eqz v2, :cond_1

    .line 405
    const/4 v2, 0x0

    .line 408
    :goto_1
    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_1
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 412
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItemsContent:Ljava/lang/String;

    .line 414
    const-string v0, ""

    .line 415
    .local v0, buttonLabel:Ljava/lang/String;
    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_3

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v1, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .end local v3           #i:I
    :goto_2
    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectButton:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 427
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->checkedItems:[Z

    array-length v6, v6

    if-ge v3, v6, :cond_6

    .line 428
    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->checkedItems:[Z

    iget-object v7, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    aput-boolean v7, v6, v3

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 417
    :cond_3
    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 418
    iget-object v6, p0, Lse/clearchannel/citybikes/ServiceFragment;->selectedItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v3           #i:I
    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 419
    .local v3, i:Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    goto :goto_4

    .line 421
    .end local v3           #i:Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 423
    .end local v4           #i$:Ljava/util/Iterator;
    .local v3, i:I
    :cond_5
    invoke-virtual {p0}, Lse/clearchannel/citybikes/ServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b004f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 430
    :cond_6
    return-void
.end method
