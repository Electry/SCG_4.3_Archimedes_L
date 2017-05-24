.class public final enum Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;
.super Ljava/lang/Enum;
.source "NetDataConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetDataConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumWbPicGetMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

.field public static final enum MODE_AUTO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

.field public static final enum MODE_LARGE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

.field public static final enum MODE_MIDDLE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

.field public static final enum MODE_SMALL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    const-string v1, "MODE_AUTO"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_AUTO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    .line 74
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    const-string v1, "MODE_SMALL"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_SMALL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    .line 75
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    const-string v1, "MODE_MIDDLE"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_MIDDLE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    .line 76
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    const-string v1, "MODE_LARGE"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_LARGE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_AUTO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_SMALL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_MIDDLE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_LARGE:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    return-object v0
.end method
