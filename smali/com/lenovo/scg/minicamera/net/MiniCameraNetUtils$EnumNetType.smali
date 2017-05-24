.class public final enum Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;
.super Ljava/lang/Enum;
.source "MiniCameraNetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumNetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

.field public static final enum NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

.field public static final enum NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

.field public static final enum NET_TYPE_UNKNOWN:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

.field public static final enum NET_TYPE_WIFI:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    const-string v1, "NET_TYPE_MOBILE_2G"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 36
    new-instance v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    const-string v1, "NET_TYPE_MOBILE_3G"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 37
    new-instance v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    const-string v1, "NET_TYPE_WIFI"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_WIFI:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 38
    new-instance v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    const-string v1, "NET_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_UNKNOWN:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_WIFI:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_UNKNOWN:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->$VALUES:[Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->$VALUES:[Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    return-object v0
.end method
