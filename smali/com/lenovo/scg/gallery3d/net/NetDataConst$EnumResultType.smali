.class public final enum Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
.super Ljava/lang/Enum;
.source "NetDataConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetDataConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

.field public static final enum RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

.field public static final enum RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

.field public static final enum RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    const-string v1, "RESULT_TYPE_SUCCEEDED"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    .line 53
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    const-string v1, "RESULT_TYPE_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    .line 54
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    const-string v1, "RESULT_TYPE_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->$VALUES:[Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    return-object v0
.end method
