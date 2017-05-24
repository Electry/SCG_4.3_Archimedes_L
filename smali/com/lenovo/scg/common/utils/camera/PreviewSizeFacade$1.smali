.class synthetic Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;
.super Ljava/lang/Object;
.source "PreviewSizeFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SizeRatioType:[I

.field static final synthetic $SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->values()[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SizeRatioType:[I

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SizeRatioType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_4_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SizeRatioType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_5_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SizeRatioType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    .line 45
    :goto_2
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->values()[Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    :try_start_3
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->ULTRA_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MIN_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->FRONT_FACE_BEAUTY:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PSIZE_1080P:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PSIZE_720P:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade$1;->$SwitchMap$com$lenovo$scg$common$utils$camera$BaseSizeFacade$SuiteSizeType:[I

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PREVIEW_SIZE_THRED_VIDEO:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    .line 233
    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
