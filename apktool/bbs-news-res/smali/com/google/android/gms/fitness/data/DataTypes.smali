.class public Lcom/google/android/gms/fitness/data/DataTypes;
.super Ljava/lang/Object;


# static fields
.field public static final ACTIVITY_EDGE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final ACTIVITY_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

.field public static final CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

.field public static final CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

.field public static final CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

.field public static final DISTANCE_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

.field public static final HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

.field public static final HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

.field public static final LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final SO:Lcom/google/android/gms/fitness/data/DataType;

.field public static final SP:Lcom/google/android/gms/fitness/data/DataType;

.field public static final SPEED:Lcom/google/android/gms/fitness/data/DataType;

.field public static final STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

.field public static final Sm:[Lcom/google/android/gms/fitness/data/DataType;

.field public static final Sn:[Ljava/lang/String;

.field public static final WEIGHT:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.step_count.delta"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->STEPS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.step_count.cumulative"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->STEPS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.step_count.cadence"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->RPM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.segment"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.calories.consumed"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->CALORIES:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.calories.expended"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->CALORIES:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.power.sample"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->WATTS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.sample"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->CONFIDENCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.activity.edge"

    new-array v2, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->ACTIVITY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->SU:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_EDGE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.accelerometer"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->SV:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->SW:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->SX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->SO:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.heart_rate.bpm"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->BPM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.location.sample"

    new-array v2, v8, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->ACCURACY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->ALTITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.location"

    new-array v2, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->LATITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->LONGITUDE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->ACCURACY:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->SP:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.distance.delta"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.distance.cumulative"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->DISTANCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->DISTANCE_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.speed"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->SPEED:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->SPEED:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.wheel_revolution.cumulative"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.wheel_revolution.rpm"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->RPM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.pedaling.cumulative"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->REVOLUTIONS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.cycling.pedaling.cadence"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->RPM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.height"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->HEIGHT:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.weight"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Fields;->WEIGHT:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->SO:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_EDGE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->DISTANCE_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->SP:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->SPEED:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->Sm:[Lcom/google/android/gms/fitness/data/DataType;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->SO:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_EDGE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/fitness/data/DataTypes;->CALORIES_CONSUMED:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->DISTANCE_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->SP:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->SPEED:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->Sn:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
