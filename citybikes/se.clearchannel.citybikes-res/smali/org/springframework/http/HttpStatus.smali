.class public final enum Lorg/springframework/http/HttpStatus;
.super Ljava/lang/Enum;
.source "HttpStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/http/HttpStatus$Series;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/springframework/http/HttpStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/springframework/http/HttpStatus;

.field public static final enum ACCEPTED:Lorg/springframework/http/HttpStatus;

.field public static final enum ALREADY_REPORTED:Lorg/springframework/http/HttpStatus;

.field public static final enum BAD_GATEWAY:Lorg/springframework/http/HttpStatus;

.field public static final enum BAD_REQUEST:Lorg/springframework/http/HttpStatus;

.field public static final enum BANDWIDTH_LIMIT_EXCEEDED:Lorg/springframework/http/HttpStatus;

.field public static final enum CHECKPOINT:Lorg/springframework/http/HttpStatus;

.field public static final enum CONFLICT:Lorg/springframework/http/HttpStatus;

.field public static final enum CONTINUE:Lorg/springframework/http/HttpStatus;

.field public static final enum CREATED:Lorg/springframework/http/HttpStatus;

.field public static final enum DESTINATION_LOCKED:Lorg/springframework/http/HttpStatus;

.field public static final enum EXPECTATION_FAILED:Lorg/springframework/http/HttpStatus;

.field public static final enum FAILED_DEPENDENCY:Lorg/springframework/http/HttpStatus;

.field public static final enum FORBIDDEN:Lorg/springframework/http/HttpStatus;

.field public static final enum FOUND:Lorg/springframework/http/HttpStatus;

.field public static final enum GATEWAY_TIMEOUT:Lorg/springframework/http/HttpStatus;

.field public static final enum GONE:Lorg/springframework/http/HttpStatus;

.field public static final enum HTTP_VERSION_NOT_SUPPORTED:Lorg/springframework/http/HttpStatus;

.field public static final enum IM_USED:Lorg/springframework/http/HttpStatus;

.field public static final enum INSUFFICIENT_SPACE_ON_RESOURCE:Lorg/springframework/http/HttpStatus;

.field public static final enum INSUFFICIENT_STORAGE:Lorg/springframework/http/HttpStatus;

.field public static final enum INTERNAL_SERVER_ERROR:Lorg/springframework/http/HttpStatus;

.field public static final enum I_AM_A_TEAPOT:Lorg/springframework/http/HttpStatus;

.field public static final enum LENGTH_REQUIRED:Lorg/springframework/http/HttpStatus;

.field public static final enum LOCKED:Lorg/springframework/http/HttpStatus;

.field public static final enum LOOP_DETECTED:Lorg/springframework/http/HttpStatus;

.field public static final enum METHOD_FAILURE:Lorg/springframework/http/HttpStatus;

.field public static final enum METHOD_NOT_ALLOWED:Lorg/springframework/http/HttpStatus;

.field public static final enum MOVED_PERMANENTLY:Lorg/springframework/http/HttpStatus;

.field public static final enum MOVED_TEMPORARILY:Lorg/springframework/http/HttpStatus;

.field public static final enum MULTIPLE_CHOICES:Lorg/springframework/http/HttpStatus;

.field public static final enum MULTI_STATUS:Lorg/springframework/http/HttpStatus;

.field public static final enum NETWORK_AUTHENTICATION_REQUIRED:Lorg/springframework/http/HttpStatus;

.field public static final enum NON_AUTHORITATIVE_INFORMATION:Lorg/springframework/http/HttpStatus;

.field public static final enum NOT_ACCEPTABLE:Lorg/springframework/http/HttpStatus;

.field public static final enum NOT_EXTENDED:Lorg/springframework/http/HttpStatus;

.field public static final enum NOT_FOUND:Lorg/springframework/http/HttpStatus;

.field public static final enum NOT_IMPLEMENTED:Lorg/springframework/http/HttpStatus;

.field public static final enum NOT_MODIFIED:Lorg/springframework/http/HttpStatus;

.field public static final enum NO_CONTENT:Lorg/springframework/http/HttpStatus;

.field public static final enum OK:Lorg/springframework/http/HttpStatus;

.field public static final enum PARTIAL_CONTENT:Lorg/springframework/http/HttpStatus;

.field public static final enum PAYMENT_REQUIRED:Lorg/springframework/http/HttpStatus;

.field public static final enum PRECONDITION_FAILED:Lorg/springframework/http/HttpStatus;

.field public static final enum PRECONDITION_REQUIRED:Lorg/springframework/http/HttpStatus;

.field public static final enum PROCESSING:Lorg/springframework/http/HttpStatus;

.field public static final enum PROXY_AUTHENTICATION_REQUIRED:Lorg/springframework/http/HttpStatus;

.field public static final enum REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/springframework/http/HttpStatus;

.field public static final enum REQUEST_ENTITY_TOO_LARGE:Lorg/springframework/http/HttpStatus;

.field public static final enum REQUEST_HEADER_FIELDS_TOO_LARGE:Lorg/springframework/http/HttpStatus;

.field public static final enum REQUEST_TIMEOUT:Lorg/springframework/http/HttpStatus;

.field public static final enum REQUEST_URI_TOO_LONG:Lorg/springframework/http/HttpStatus;

.field public static final enum RESET_CONTENT:Lorg/springframework/http/HttpStatus;

.field public static final enum RESUME_INCOMPLETE:Lorg/springframework/http/HttpStatus;

.field public static final enum SEE_OTHER:Lorg/springframework/http/HttpStatus;

.field public static final enum SERVICE_UNAVAILABLE:Lorg/springframework/http/HttpStatus;

.field public static final enum SWITCHING_PROTOCOLS:Lorg/springframework/http/HttpStatus;

.field public static final enum TEMPORARY_REDIRECT:Lorg/springframework/http/HttpStatus;

.field public static final enum TOO_MANY_REQUESTS:Lorg/springframework/http/HttpStatus;

.field public static final enum UNAUTHORIZED:Lorg/springframework/http/HttpStatus;

.field public static final enum UNPROCESSABLE_ENTITY:Lorg/springframework/http/HttpStatus;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lorg/springframework/http/HttpStatus;

.field public static final enum UPGRADE_REQUIRED:Lorg/springframework/http/HttpStatus;

.field public static final enum USE_PROXY:Lorg/springframework/http/HttpStatus;

.field public static final enum VARIANT_ALSO_NEGOTIATES:Lorg/springframework/http/HttpStatus;


# instance fields
.field private final reasonPhrase:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "CONTINUE"

    const/16 v2, 0x64

    const-string v3, "Continue"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->CONTINUE:Lorg/springframework/http/HttpStatus;

    .line 43
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "SWITCHING_PROTOCOLS"

    const/16 v2, 0x65

    const-string v3, "Switching Protocols"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->SWITCHING_PROTOCOLS:Lorg/springframework/http/HttpStatus;

    .line 48
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "PROCESSING"

    const/16 v2, 0x66

    const-string v3, "Processing"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->PROCESSING:Lorg/springframework/http/HttpStatus;

    .line 54
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "CHECKPOINT"

    const/16 v2, 0x67

    const-string v3, "Checkpoint"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->CHECKPOINT:Lorg/springframework/http/HttpStatus;

    .line 62
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "OK"

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->OK:Lorg/springframework/http/HttpStatus;

    .line 67
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "CREATED"

    const/4 v2, 0x5

    const/16 v3, 0xc9

    const-string v4, "Created"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->CREATED:Lorg/springframework/http/HttpStatus;

    .line 72
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "ACCEPTED"

    const/4 v2, 0x6

    const/16 v3, 0xca

    const-string v4, "Accepted"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->ACCEPTED:Lorg/springframework/http/HttpStatus;

    .line 77
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "NON_AUTHORITATIVE_INFORMATION"

    const/4 v2, 0x7

    const/16 v3, 0xcb

    const-string v4, "Non-Authoritative Information"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->NON_AUTHORITATIVE_INFORMATION:Lorg/springframework/http/HttpStatus;

    .line 82
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "NO_CONTENT"

    const/16 v2, 0x8

    const/16 v3, 0xcc

    const-string v4, "No Content"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->NO_CONTENT:Lorg/springframework/http/HttpStatus;

    .line 87
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "RESET_CONTENT"

    const/16 v2, 0x9

    const/16 v3, 0xcd

    const-string v4, "Reset Content"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->RESET_CONTENT:Lorg/springframework/http/HttpStatus;

    .line 92
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "PARTIAL_CONTENT"

    const/16 v2, 0xa

    const/16 v3, 0xce

    const-string v4, "Partial Content"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->PARTIAL_CONTENT:Lorg/springframework/http/HttpStatus;

    .line 97
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "MULTI_STATUS"

    const/16 v2, 0xb

    const/16 v3, 0xcf

    const-string v4, "Multi-Status"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->MULTI_STATUS:Lorg/springframework/http/HttpStatus;

    .line 102
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "ALREADY_REPORTED"

    const/16 v2, 0xc

    const/16 v3, 0xd0

    const-string v4, "Already Reported"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->ALREADY_REPORTED:Lorg/springframework/http/HttpStatus;

    .line 107
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "IM_USED"

    const/16 v2, 0xd

    const/16 v3, 0xe2

    const-string v4, "IM Used"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->IM_USED:Lorg/springframework/http/HttpStatus;

    .line 115
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "MULTIPLE_CHOICES"

    const/16 v2, 0xe

    const/16 v3, 0x12c

    const-string v4, "Multiple Choices"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->MULTIPLE_CHOICES:Lorg/springframework/http/HttpStatus;

    .line 120
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "MOVED_PERMANENTLY"

    const/16 v2, 0xf

    const/16 v3, 0x12d

    const-string v4, "Moved Permanently"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->MOVED_PERMANENTLY:Lorg/springframework/http/HttpStatus;

    .line 125
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "FOUND"

    const/16 v2, 0x10

    const/16 v3, 0x12e

    const-string v4, "Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->FOUND:Lorg/springframework/http/HttpStatus;

    .line 130
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "MOVED_TEMPORARILY"

    const/16 v2, 0x11

    const/16 v3, 0x12e

    const-string v4, "Moved Temporarily"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->MOVED_TEMPORARILY:Lorg/springframework/http/HttpStatus;

    .line 135
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "SEE_OTHER"

    const/16 v2, 0x12

    const/16 v3, 0x12f

    const-string v4, "See Other"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->SEE_OTHER:Lorg/springframework/http/HttpStatus;

    .line 140
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "NOT_MODIFIED"

    const/16 v2, 0x13

    const/16 v3, 0x130

    const-string v4, "Not Modified"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->NOT_MODIFIED:Lorg/springframework/http/HttpStatus;

    .line 145
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "USE_PROXY"

    const/16 v2, 0x14

    const/16 v3, 0x131

    const-string v4, "Use Proxy"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->USE_PROXY:Lorg/springframework/http/HttpStatus;

    .line 150
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "TEMPORARY_REDIRECT"

    const/16 v2, 0x15

    const/16 v3, 0x133

    const-string v4, "Temporary Redirect"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->TEMPORARY_REDIRECT:Lorg/springframework/http/HttpStatus;

    .line 156
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "RESUME_INCOMPLETE"

    const/16 v2, 0x16

    const/16 v3, 0x134

    const-string v4, "Resume Incomplete"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->RESUME_INCOMPLETE:Lorg/springframework/http/HttpStatus;

    .line 164
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "BAD_REQUEST"

    const/16 v2, 0x17

    const/16 v3, 0x190

    const-string v4, "Bad Request"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->BAD_REQUEST:Lorg/springframework/http/HttpStatus;

    .line 169
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "UNAUTHORIZED"

    const/16 v2, 0x18

    const/16 v3, 0x191

    const-string v4, "Unauthorized"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->UNAUTHORIZED:Lorg/springframework/http/HttpStatus;

    .line 174
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "PAYMENT_REQUIRED"

    const/16 v2, 0x19

    const/16 v3, 0x192

    const-string v4, "Payment Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->PAYMENT_REQUIRED:Lorg/springframework/http/HttpStatus;

    .line 179
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0x1a

    const/16 v3, 0x193

    const-string v4, "Forbidden"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->FORBIDDEN:Lorg/springframework/http/HttpStatus;

    .line 184
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "NOT_FOUND"

    const/16 v2, 0x1b

    const/16 v3, 0x194

    const-string v4, "Not Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->NOT_FOUND:Lorg/springframework/http/HttpStatus;

    .line 189
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "METHOD_NOT_ALLOWED"

    const/16 v2, 0x1c

    const/16 v3, 0x195

    const-string v4, "Method Not Allowed"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->METHOD_NOT_ALLOWED:Lorg/springframework/http/HttpStatus;

    .line 194
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "NOT_ACCEPTABLE"

    const/16 v2, 0x1d

    const/16 v3, 0x196

    const-string v4, "Not Acceptable"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->NOT_ACCEPTABLE:Lorg/springframework/http/HttpStatus;

    .line 199
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "PROXY_AUTHENTICATION_REQUIRED"

    const/16 v2, 0x1e

    const/16 v3, 0x197

    const-string v4, "Proxy Authentication Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/springframework/http/HttpStatus;

    .line 204
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "REQUEST_TIMEOUT"

    const/16 v2, 0x1f

    const/16 v3, 0x198

    const-string v4, "Request Timeout"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->REQUEST_TIMEOUT:Lorg/springframework/http/HttpStatus;

    .line 209
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "CONFLICT"

    const/16 v2, 0x20

    const/16 v3, 0x199

    const-string v4, "Conflict"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->CONFLICT:Lorg/springframework/http/HttpStatus;

    .line 214
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "GONE"

    const/16 v2, 0x21

    const/16 v3, 0x19a

    const-string v4, "Gone"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->GONE:Lorg/springframework/http/HttpStatus;

    .line 219
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "LENGTH_REQUIRED"

    const/16 v2, 0x22

    const/16 v3, 0x19b

    const-string v4, "Length Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->LENGTH_REQUIRED:Lorg/springframework/http/HttpStatus;

    .line 224
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "PRECONDITION_FAILED"

    const/16 v2, 0x23

    const/16 v3, 0x19c

    const-string v4, "Precondition Failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->PRECONDITION_FAILED:Lorg/springframework/http/HttpStatus;

    .line 229
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "REQUEST_ENTITY_TOO_LARGE"

    const/16 v2, 0x24

    const/16 v3, 0x19d

    const-string v4, "Request Entity Too Large"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->REQUEST_ENTITY_TOO_LARGE:Lorg/springframework/http/HttpStatus;

    .line 234
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "REQUEST_URI_TOO_LONG"

    const/16 v2, 0x25

    const/16 v3, 0x19e

    const-string v4, "Request-URI Too Long"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->REQUEST_URI_TOO_LONG:Lorg/springframework/http/HttpStatus;

    .line 239
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "UNSUPPORTED_MEDIA_TYPE"

    const/16 v2, 0x26

    const/16 v3, 0x19f

    const-string v4, "Unsupported Media Type"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->UNSUPPORTED_MEDIA_TYPE:Lorg/springframework/http/HttpStatus;

    .line 244
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "REQUESTED_RANGE_NOT_SATISFIABLE"

    const/16 v2, 0x27

    const/16 v3, 0x1a0

    const-string v4, "Requested range not satisfiable"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/springframework/http/HttpStatus;

    .line 249
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "EXPECTATION_FAILED"

    const/16 v2, 0x28

    const/16 v3, 0x1a1

    const-string v4, "Expectation Failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->EXPECTATION_FAILED:Lorg/springframework/http/HttpStatus;

    .line 254
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "I_AM_A_TEAPOT"

    const/16 v2, 0x29

    const/16 v3, 0x1a2

    const-string v4, "I\'m a teapot"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->I_AM_A_TEAPOT:Lorg/springframework/http/HttpStatus;

    .line 259
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "INSUFFICIENT_SPACE_ON_RESOURCE"

    const/16 v2, 0x2a

    const/16 v3, 0x1a3

    const-string v4, "Insufficient Space On Resource"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->INSUFFICIENT_SPACE_ON_RESOURCE:Lorg/springframework/http/HttpStatus;

    .line 264
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "METHOD_FAILURE"

    const/16 v2, 0x2b

    const/16 v3, 0x1a4

    const-string v4, "Method Failure"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->METHOD_FAILURE:Lorg/springframework/http/HttpStatus;

    .line 269
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "DESTINATION_LOCKED"

    const/16 v2, 0x2c

    const/16 v3, 0x1a5

    const-string v4, "Destination Locked"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->DESTINATION_LOCKED:Lorg/springframework/http/HttpStatus;

    .line 274
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "UNPROCESSABLE_ENTITY"

    const/16 v2, 0x2d

    const/16 v3, 0x1a6

    const-string v4, "Unprocessable Entity"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->UNPROCESSABLE_ENTITY:Lorg/springframework/http/HttpStatus;

    .line 279
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "LOCKED"

    const/16 v2, 0x2e

    const/16 v3, 0x1a7

    const-string v4, "Locked"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->LOCKED:Lorg/springframework/http/HttpStatus;

    .line 284
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "FAILED_DEPENDENCY"

    const/16 v2, 0x2f

    const/16 v3, 0x1a8

    const-string v4, "Failed Dependency"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->FAILED_DEPENDENCY:Lorg/springframework/http/HttpStatus;

    .line 289
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "UPGRADE_REQUIRED"

    const/16 v2, 0x30

    const/16 v3, 0x1aa

    const-string v4, "Upgrade Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->UPGRADE_REQUIRED:Lorg/springframework/http/HttpStatus;

    .line 295
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "PRECONDITION_REQUIRED"

    const/16 v2, 0x31

    const/16 v3, 0x1ac

    const-string v4, "Precondition Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->PRECONDITION_REQUIRED:Lorg/springframework/http/HttpStatus;

    .line 301
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "TOO_MANY_REQUESTS"

    const/16 v2, 0x32

    const/16 v3, 0x1ad

    const-string v4, "Too Many Requests"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->TOO_MANY_REQUESTS:Lorg/springframework/http/HttpStatus;

    .line 307
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "REQUEST_HEADER_FIELDS_TOO_LARGE"

    const/16 v2, 0x33

    const/16 v3, 0x1af

    const-string v4, "Request Header Fields Too Large"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->REQUEST_HEADER_FIELDS_TOO_LARGE:Lorg/springframework/http/HttpStatus;

    .line 315
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "INTERNAL_SERVER_ERROR"

    const/16 v2, 0x34

    const/16 v3, 0x1f4

    const-string v4, "Internal Server Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->INTERNAL_SERVER_ERROR:Lorg/springframework/http/HttpStatus;

    .line 320
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x35

    const/16 v3, 0x1f5

    const-string v4, "Not Implemented"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->NOT_IMPLEMENTED:Lorg/springframework/http/HttpStatus;

    .line 325
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "BAD_GATEWAY"

    const/16 v2, 0x36

    const/16 v3, 0x1f6

    const-string v4, "Bad Gateway"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->BAD_GATEWAY:Lorg/springframework/http/HttpStatus;

    .line 330
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/16 v2, 0x37

    const/16 v3, 0x1f7

    const-string v4, "Service Unavailable"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->SERVICE_UNAVAILABLE:Lorg/springframework/http/HttpStatus;

    .line 335
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "GATEWAY_TIMEOUT"

    const/16 v2, 0x38

    const/16 v3, 0x1f8

    const-string v4, "Gateway Timeout"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->GATEWAY_TIMEOUT:Lorg/springframework/http/HttpStatus;

    .line 340
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "HTTP_VERSION_NOT_SUPPORTED"

    const/16 v2, 0x39

    const/16 v3, 0x1f9

    const-string v4, "HTTP Version not supported"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->HTTP_VERSION_NOT_SUPPORTED:Lorg/springframework/http/HttpStatus;

    .line 345
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "VARIANT_ALSO_NEGOTIATES"

    const/16 v2, 0x3a

    const/16 v3, 0x1fa

    const-string v4, "Variant Also Negotiates"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->VARIANT_ALSO_NEGOTIATES:Lorg/springframework/http/HttpStatus;

    .line 350
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "INSUFFICIENT_STORAGE"

    const/16 v2, 0x3b

    const/16 v3, 0x1fb

    const-string v4, "Insufficient Storage"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->INSUFFICIENT_STORAGE:Lorg/springframework/http/HttpStatus;

    .line 355
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "LOOP_DETECTED"

    const/16 v2, 0x3c

    const/16 v3, 0x1fc

    const-string v4, "Loop Detected"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->LOOP_DETECTED:Lorg/springframework/http/HttpStatus;

    .line 359
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "BANDWIDTH_LIMIT_EXCEEDED"

    const/16 v2, 0x3d

    const/16 v3, 0x1fd

    const-string v4, "Bandwidth Limit Exceeded"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->BANDWIDTH_LIMIT_EXCEEDED:Lorg/springframework/http/HttpStatus;

    .line 364
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "NOT_EXTENDED"

    const/16 v2, 0x3e

    const/16 v3, 0x1fe

    const-string v4, "Not Extended"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->NOT_EXTENDED:Lorg/springframework/http/HttpStatus;

    .line 370
    new-instance v0, Lorg/springframework/http/HttpStatus;

    const-string v1, "NETWORK_AUTHENTICATION_REQUIRED"

    const/16 v2, 0x3f

    const/16 v3, 0x1ff

    const-string v4, "Network Authentication Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/springframework/http/HttpStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/springframework/http/HttpStatus;->NETWORK_AUTHENTICATION_REQUIRED:Lorg/springframework/http/HttpStatus;

    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [Lorg/springframework/http/HttpStatus;

    sget-object v1, Lorg/springframework/http/HttpStatus;->CONTINUE:Lorg/springframework/http/HttpStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/springframework/http/HttpStatus;->SWITCHING_PROTOCOLS:Lorg/springframework/http/HttpStatus;

    aput-object v1, v0, v6

    sget-object v1, Lorg/springframework/http/HttpStatus;->PROCESSING:Lorg/springframework/http/HttpStatus;

    aput-object v1, v0, v7

    sget-object v1, Lorg/springframework/http/HttpStatus;->CHECKPOINT:Lorg/springframework/http/HttpStatus;

    aput-object v1, v0, v8

    sget-object v1, Lorg/springframework/http/HttpStatus;->OK:Lorg/springframework/http/HttpStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/springframework/http/HttpStatus;->CREATED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/springframework/http/HttpStatus;->ACCEPTED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/springframework/http/HttpStatus;->NON_AUTHORITATIVE_INFORMATION:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/springframework/http/HttpStatus;->NO_CONTENT:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/springframework/http/HttpStatus;->RESET_CONTENT:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/springframework/http/HttpStatus;->PARTIAL_CONTENT:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/springframework/http/HttpStatus;->MULTI_STATUS:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/springframework/http/HttpStatus;->ALREADY_REPORTED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/springframework/http/HttpStatus;->IM_USED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/springframework/http/HttpStatus;->MULTIPLE_CHOICES:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/springframework/http/HttpStatus;->MOVED_PERMANENTLY:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/springframework/http/HttpStatus;->FOUND:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/springframework/http/HttpStatus;->MOVED_TEMPORARILY:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/springframework/http/HttpStatus;->SEE_OTHER:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/springframework/http/HttpStatus;->NOT_MODIFIED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/springframework/http/HttpStatus;->USE_PROXY:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/springframework/http/HttpStatus;->TEMPORARY_REDIRECT:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/springframework/http/HttpStatus;->RESUME_INCOMPLETE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/springframework/http/HttpStatus;->BAD_REQUEST:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/springframework/http/HttpStatus;->UNAUTHORIZED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/springframework/http/HttpStatus;->PAYMENT_REQUIRED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/springframework/http/HttpStatus;->FORBIDDEN:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/springframework/http/HttpStatus;->NOT_FOUND:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/springframework/http/HttpStatus;->METHOD_NOT_ALLOWED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/springframework/http/HttpStatus;->NOT_ACCEPTABLE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/springframework/http/HttpStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/springframework/http/HttpStatus;->REQUEST_TIMEOUT:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/springframework/http/HttpStatus;->CONFLICT:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/springframework/http/HttpStatus;->GONE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lorg/springframework/http/HttpStatus;->LENGTH_REQUIRED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lorg/springframework/http/HttpStatus;->PRECONDITION_FAILED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lorg/springframework/http/HttpStatus;->REQUEST_ENTITY_TOO_LARGE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lorg/springframework/http/HttpStatus;->REQUEST_URI_TOO_LONG:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lorg/springframework/http/HttpStatus;->UNSUPPORTED_MEDIA_TYPE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lorg/springframework/http/HttpStatus;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lorg/springframework/http/HttpStatus;->EXPECTATION_FAILED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lorg/springframework/http/HttpStatus;->I_AM_A_TEAPOT:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lorg/springframework/http/HttpStatus;->INSUFFICIENT_SPACE_ON_RESOURCE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lorg/springframework/http/HttpStatus;->METHOD_FAILURE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lorg/springframework/http/HttpStatus;->DESTINATION_LOCKED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lorg/springframework/http/HttpStatus;->UNPROCESSABLE_ENTITY:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lorg/springframework/http/HttpStatus;->LOCKED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lorg/springframework/http/HttpStatus;->FAILED_DEPENDENCY:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lorg/springframework/http/HttpStatus;->UPGRADE_REQUIRED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lorg/springframework/http/HttpStatus;->PRECONDITION_REQUIRED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lorg/springframework/http/HttpStatus;->TOO_MANY_REQUESTS:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lorg/springframework/http/HttpStatus;->REQUEST_HEADER_FIELDS_TOO_LARGE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lorg/springframework/http/HttpStatus;->INTERNAL_SERVER_ERROR:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lorg/springframework/http/HttpStatus;->NOT_IMPLEMENTED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lorg/springframework/http/HttpStatus;->BAD_GATEWAY:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lorg/springframework/http/HttpStatus;->SERVICE_UNAVAILABLE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lorg/springframework/http/HttpStatus;->GATEWAY_TIMEOUT:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lorg/springframework/http/HttpStatus;->HTTP_VERSION_NOT_SUPPORTED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lorg/springframework/http/HttpStatus;->VARIANT_ALSO_NEGOTIATES:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lorg/springframework/http/HttpStatus;->INSUFFICIENT_STORAGE:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lorg/springframework/http/HttpStatus;->LOOP_DETECTED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lorg/springframework/http/HttpStatus;->BANDWIDTH_LIMIT_EXCEEDED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lorg/springframework/http/HttpStatus;->NOT_EXTENDED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lorg/springframework/http/HttpStatus;->NETWORK_AUTHENTICATION_REQUIRED:Lorg/springframework/http/HttpStatus;

    aput-object v2, v0, v1

    sput-object v0, Lorg/springframework/http/HttpStatus;->$VALUES:[Lorg/springframework/http/HttpStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .parameter "reasonPhrase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 379
    iput p3, p0, Lorg/springframework/http/HttpStatus;->value:I

    .line 380
    iput-object p4, p0, Lorg/springframework/http/HttpStatus;->reasonPhrase:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public static valueOf(I)Lorg/springframework/http/HttpStatus;
    .locals 7
    .parameter "statusCode"

    .prologue
    .line 421
    invoke-static {}, Lorg/springframework/http/HttpStatus;->values()[Lorg/springframework/http/HttpStatus;

    move-result-object v0

    .local v0, arr$:[Lorg/springframework/http/HttpStatus;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 422
    .local v3, status:Lorg/springframework/http/HttpStatus;
    iget v4, v3, Lorg/springframework/http/HttpStatus;->value:I

    if-ne v4, p0, :cond_0

    .line 423
    return-object v3

    .line 421
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v3           #status:Lorg/springframework/http/HttpStatus;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No matching constant for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/springframework/http/HttpStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lorg/springframework/http/HttpStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/HttpStatus;

    return-object v0
.end method

.method public static values()[Lorg/springframework/http/HttpStatus;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/springframework/http/HttpStatus;->$VALUES:[Lorg/springframework/http/HttpStatus;

    invoke-virtual {v0}, [Lorg/springframework/http/HttpStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/springframework/http/HttpStatus;

    return-object v0
.end method


# virtual methods
.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/springframework/http/HttpStatus;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public series()Lorg/springframework/http/HttpStatus$Series;
    .locals 1

    .prologue
    .line 402
    #calls: Lorg/springframework/http/HttpStatus$Series;->valueOf(Lorg/springframework/http/HttpStatus;)Lorg/springframework/http/HttpStatus$Series;
    invoke-static {p0}, Lorg/springframework/http/HttpStatus$Series;->access$000(Lorg/springframework/http/HttpStatus;)Lorg/springframework/http/HttpStatus$Series;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lorg/springframework/http/HttpStatus;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lorg/springframework/http/HttpStatus;->value:I

    return v0
.end method
