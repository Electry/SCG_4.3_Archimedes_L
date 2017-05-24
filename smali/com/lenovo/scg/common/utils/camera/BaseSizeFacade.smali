.class public Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade;
.super Ljava/lang/Object;
.source "BaseSizeFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;,
        Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static judgeTypeBySizeString(Ljava/lang/String;)Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    .locals 6
    .param p0, "mSizeString"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string/jumbo v4, "x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "whString":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 68
    .local v2, "mSizeW":I
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    .local v0, "mSizeH":I
    int-to-float v4, v2

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    int-to-float v5, v0

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 72
    .local v1, "mSizeRatio":I
    const/16 v4, 0x11

    if-ne v1, v4, :cond_0

    .line 73
    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    .line 79
    :goto_0
    return-object v4

    .line 74
    :cond_0
    const/16 v4, 0xd

    if-ne v1, v4, :cond_1

    .line 75
    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_4_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    goto :goto_0

    .line 76
    :cond_1
    const/16 v4, 0x10

    if-ne v1, v4, :cond_2

    .line 77
    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_5_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    goto :goto_0

    .line 79
    :cond_2
    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    goto :goto_0
.end method
