.class public Lcom/baidu/idl/lib/SDKProtocol;
.super Ljava/lang/Object;
.source "SDKProtocol.java"


# static fields
.field public static final API_KEY:Ljava/lang/String; = "SCLqldqp9k8GwmangbC6fE5y"

.field public static final APP_ID:Ljava/lang/String; = "1536255"

.field public static final APP_ID_IDL_SDK_ANDROID:I = 0x229959

.field public static final APP_SECRET:Ljava/lang/String; = "SLZqQnxQNSwaydmfS6QwsKGRAOsZaBxI"

.field public static final DATE_LENGTH:I = 0x38

.field public static final DATE_SIZE:I = 0x24c0

.field public static final IDL_APP_ID:Ljava/lang/String; = "10025"

.field public static final LOG_TAG:Ljava/lang/String; = "IDLSDK"

.field public static final NET_IMAGE_SIZE:I = 0xc8

.field public static final STATISTICS_DAY:I = 0xb4

.field private static final URL_BASE:Ljava/lang/String; = "http://uplog.xiangce.baidu.com/"

.field public static final URL_STATISTICS_CONTROL:Ljava/lang/String; = "http://uplog.xiangce.baidu.com/mobileapp/nac"

.field public static final URL_STATISTICS_POST:Ljava/lang/String; = "http://uplog.xiangce.baidu.com/mobileapp/nupload-log"

.field public static final ZXING_IDL_URL:Ljava/lang/String; = "http://starup.xiangce.baidu.com/mobileapp/analyse-multimedia"

.field public static final channelId:Ljava/lang/String; = "lenovo"

.field public static final isLog:Z

.field public static final packs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/baidu/idl/lib/SDKProtocol$1;

    invoke-direct {v0}, Lcom/baidu/idl/lib/SDKProtocol$1;-><init>()V

    sput-object v0, Lcom/baidu/idl/lib/SDKProtocol;->packs:Ljava/util/List;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
