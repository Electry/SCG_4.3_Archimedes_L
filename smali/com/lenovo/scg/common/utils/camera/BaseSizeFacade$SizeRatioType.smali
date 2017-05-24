.class public final enum Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
.super Ljava/lang/Enum;
.source "BaseSizeFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeRatioType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

.field public static final enum PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

.field public static final enum PSIZE_4_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

.field public static final enum PSIZE_5_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    const-string v1, "PSIZE_4_3"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_4_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    .line 6
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    const-string v1, "PSIZE_5_3"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_5_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    .line 7
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    const-string v1, "PSIZE_16_9"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_4_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_5_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->$VALUES:[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->$VALUES:[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    return-object v0
.end method
