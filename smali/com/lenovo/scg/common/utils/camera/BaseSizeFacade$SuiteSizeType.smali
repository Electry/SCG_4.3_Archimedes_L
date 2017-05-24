.class public final enum Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;
.super Ljava/lang/Enum;
.source "BaseSizeFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuiteSizeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

.field public static final enum DEFAULT:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

.field public static final enum FRONT_FACE_BEAUTY:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

.field public static final enum MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

.field public static final enum MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

.field public static final enum MIN_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

.field public static final enum PREVIEW_SIZE_THRED_VIDEO:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

.field public static final enum PSIZE_1080P:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

.field public static final enum PSIZE_720P:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

.field public static final enum ULTRA_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    const-string v1, "ULTRA_SIZE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->ULTRA_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .line 19
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    const-string v1, "MAX_SIZE"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .line 24
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    const-string v1, "MID_SIZE"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .line 29
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    const-string v1, "MIN_SIZE"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MIN_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .line 34
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    const-string v1, "FRONT_FACE_BEAUTY"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->FRONT_FACE_BEAUTY:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .line 39
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->DEFAULT:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .line 44
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    const-string v1, "PSIZE_720P"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PSIZE_720P:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .line 49
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    const-string v1, "PSIZE_1080P"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PSIZE_1080P:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .line 54
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    const-string v1, "PREVIEW_SIZE_THRED_VIDEO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PREVIEW_SIZE_THRED_VIDEO:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->ULTRA_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MIN_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->FRONT_FACE_BEAUTY:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->DEFAULT:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PSIZE_720P:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PSIZE_1080P:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PREVIEW_SIZE_THRED_VIDEO:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->$VALUES:[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->$VALUES:[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    return-object v0
.end method
