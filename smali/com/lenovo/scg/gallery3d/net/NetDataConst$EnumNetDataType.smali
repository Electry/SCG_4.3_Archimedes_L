.class public final enum Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
.super Ljava/lang/Enum;
.source "NetDataConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetDataConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumNetDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

.field public static final enum DATA_TYPE_BITMAP:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

.field public static final enum DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

.field public static final enum DATA_TYPE_GIF:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

.field public static final enum DATA_TYPE_SIZE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

.field public static final enum DATA_TYPE_SOUND:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

.field public static final enum DATA_TYPE_STRING:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

.field public static final enum DATA_TYPE_VIDEO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const-string v1, "DATA_TYPE_STRING"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_STRING:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    .line 42
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const-string v1, "DATA_TYPE_BYTES"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    .line 43
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const-string v1, "DATA_TYPE_BITMAP"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BITMAP:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    .line 44
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const-string v1, "DATA_TYPE_GIF"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_GIF:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const-string v1, "DATA_TYPE_SOUND"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_SOUND:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    .line 46
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const-string v1, "DATA_TYPE_VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_VIDEO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    .line 48
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const-string v1, "DATA_TYPE_SIZE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_SIZE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_STRING:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BITMAP:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_GIF:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_SOUND:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_VIDEO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_SIZE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    return-object v0
.end method
