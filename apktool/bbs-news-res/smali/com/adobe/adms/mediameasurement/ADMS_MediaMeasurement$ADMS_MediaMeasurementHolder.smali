.class Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement$ADMS_MediaMeasurementHolder;
.super Ljava/lang/Object;
.source "ADMS_MediaMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ADMS_MediaMeasurementHolder"
.end annotation


# static fields
.field public static baseInstance:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;-><init>(Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement$1;)V

    sput-object v0, Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement$ADMS_MediaMeasurementHolder;->baseInstance:Lcom/adobe/adms/mediameasurement/ADMS_MediaMeasurement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
