.class public Lcom/lenovo/scg/camera/smartengine/IVCScene;
.super Ljava/lang/Object;
.source "IVCScene.java"


# static fields
.field private static final ACC_RANGE:I = 0x23

.field private static final BlockHeight:I = 0x4

.field private static final BlockHeightNum:I = 0x7

.field private static final BlockWidth:I = 0x4

.field private static final BlockWidthNum:I = 0x7

.field private static final CODE_NUM:I = 0x3

.field private static final COORDS_PER_VERTEX:I = 0x2

.field private static final Coe_Acc:F = 0.9f

.field private static final Coe_Dregree:F = 0.9f

.field private static final Coe_Occ:F = 0.9f

.field private static final DownsampleHeight:I = 0x80

.field private static final DownsampleVarHeight:I = 0x20

.field private static final DownsampleVarHeight16_9:I = 0x195

.field private static final DownsampleVarHeight4_3:I = 0x1e0

.field private static final DownsampleVarWidth:I = 0x20

.field private static final DownsampleWidth:I = 0x80

.field private static final DownsampleWidth16_9:I = 0x2d0

.field private static final DownsampleWidth4_3:I = 0x280

.field private static final Env_ThresISP:I = 0x118

.field private static final HISTO_DST_BINNUM:I = 0x10

.field private static final HISTO_SRC_BINNUM:I = 0x100

.field private static final INTERLINEAR:I = 0x1

.field private static final INTERNEAREST:I = 0x0

.field private static final LIGHT_NUM:I = 0x4

.field private static final LIGHT_NUMOFWEIGHT:I = 0x32

.field private static final LIST_ACC_LENGTH:I = 0x5

.field private static final LIST_CODE_LENGTH:I = 0x5

.field private static final LIST_IMG_LENGTH:I = 0x5

.field private static final LIST_LIGHT_LENGTH:I = 0x5

.field private static final LIST_MOTION_LENGTH:I = 0x6

.field private static final Landscape_ThresFocusDis:F = 0.5f

.field private static final Landscape_ThresISP:I = 0x10e

.field private static final Landscape_ThresLLux:I = 0x5dc

.field private static final Landscape_ThresRGBLuxLow1:I = 0x3a98

.field private static final Landscape_ThresRGBLuxLow2:I = 0x3e8

.field private static final Landscape_ThresRGBLuxLow3:I = 0x12c

.field private static final Landscape_ThresRankLow:F = 0.1f

.field private static final Light_ThresFoucsDis:F = 0.5f

.field private static final MOTION_NUM:I = 0x3

.field private static final MatmatrixHeight:I = 0x10

.field private static final MatmatrixWidth:I = 0x10

.field private static final MatrixHeight:I = 0x40

.field private static final MatrixWidth:I = 0x40

.field private static final Motion_ThresAccHigh:F = 0.3f

.field private static final Motion_ThresAccLow:F = 0.5f

.field private static final Motion_ThresList:I = 0x4

.field private static final Motion_ThresOccHigh:F = 0.5f

.field private static final Motion_ThresSubLow:I = 0x5

.field private static final Motion_ThresSubNum:I = 0x46

.field private static final OutputHeight:I = 0x10

.field private static final OutputWidth:I = 0x100

.field private static final PROGRAM_INDEX0:I = 0x0

.field private static final PROGRAM_INDEX1:I = 0x1

.field private static final PROGRAM_INDEX2:I = 0x2

.field private static final PROGRAM_INDEX3:I = 0x3

.field private static final PROGRAM_INDEX4:I = 0x4

.field private static final PROGRAM_INDEX5:I = 0x5

.field private static final PROGRAM_INDEX6:I = 0x6

.field private static final PROGRAM_INDEX7:I = 0x7

.field private static final PROGRAM_INDEX8:I = 0x8

.field private static final PROGRAM_NUM:I = 0xa

.field public static final SCENE_1DCODE:I = 0x40

.field public static final SCENE_2DCODE:I = 0x80

.field public static final SCENE_CODE:I = 0x20

.field public static final SCENE_DOCUMENT:I = 0x4

.field public static final SCENE_INOUTDOOR:I = 0x100

.field public static final SCENE_LANDSCAPE:I = 0x10

.field public static final SCENE_LIGHT:I = 0x8

.field public static final SCENE_MOTION:I = 0x1

.field public static final SCENE_PORTRAIT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "IVCScene"

.field private static final TIME_THRESHOLD:I = 0x64

.field private static final ThresShouldDetect:F = 40.0f

.field private static final degreeBound:[[D

.field private static final drawOrder:[S

.field private static final exp_ThresFlash:F = 412.0f

.field private static instance:Lcom/lenovo/scg/camera/smartengine/IVCScene; = null

.field public static isFlashOnFlag:Z = false

.field private static isISPDataUsable:Z = false

.field private static final size1_ThresHigh:F = 1.82f

.field private static final size1_ThresLow:F = 1.72f

.field private static final size2_ThresHigh:F = 1.38f

.field private static final size2_ThresLow:F = 1.28f

.field private static final squareVertices:[F

.field private static final textureVerticesFBO:[F

.field private static final textureVerticesFBO180:[F

.field private static final textureVerticesFBO270:[F

.field private static final textureVerticesFBO90:[F

.field private static final textureVerticesPreview:[F

.field private static final textureVerticesRatioFBO:[F

.field private static final vertexStride:I = 0x8


# instance fields
.field private BlockCPU:J

.field private BlockGPU:J

.field private Codetime:J

.field private CompressedCodeHeight:I

.field private CompressedCodeWidth:I

.field private DownsampleCodeHeight:I

.field private DownsampleCodeWidth:I

.field private Downsizetime:J

.field private Histotime:J

.field private IS_COMPRESSED:Z

.field private IS_PICTURESIZE_CHANGED:Z

.field private IS_PREIVEW:Z

.field private Landscapetime:J

.field private Light_ThresExpHigh1:I

.field private Light_ThresExpHigh2:I

.field private Light_ThresExpLow:I

.field private Light_ThresLuxHigh:I

.field private Light_ThresRGBLuxLow:I

.field private Light_thresRGBLux:F

.field private Lighttime:J

.field private SHADER_NAME:[[Ljava/lang/String;

.field private _CompressedCodeHeight:I

.field private _CompressedCodeWidth:I

.field private _DownsampleCodeHeight:I

.field private _DownsampleCodeWidth:I

.field private _previewHeight:I

.field private _previewWidth:I

.field private block2DY:[[F

.field private block2DYRotation:[[F

.field private blockY:[F

.field private codeData:[B

.field private context:Landroid/content/Context;

.field private countAcc:I

.field private countLight:I

.field private countOcc:I

.field private currentFps:J

.field private dataROI:[B

.field private dataThld:[B

.field private dataYUV:[B

.field private debugValue:[F

.field private drawListBuffer:Ljava/nio/ShortBuffer;

.field private endFrameRate:J

.field private featureVector:[F

.field private firstDraw:Z

.field private flag:[I

.field private fragShader_Compressed:Ljava/lang/String;

.field private fragShader_Histo:Ljava/lang/String;

.field private fragShader_Pre:Ljava/lang/String;

.field private fragShader_RGB2YUV:Ljava/lang/String;

.field private fragShader_Region:Ljava/lang/String;

.field private fragShader_Sub:Ljava/lang/String;

.field private fragShader_Weighted:Ljava/lang/String;

.field private frame:J

.field private h:I

.field private histoU_src:[F

.field private histoV_src:[F

.field private histoY_dst:[F

.field private histoY_src:[F

.field private is1DCodeDetect:Z

.field private is2DCodeDetect:Z

.field private isCodeDetect:Z

.field private isDetectedType:Z

.field private isDocumentDetect:Z

.field private isInOutdoorDetect:Z

.field private isLandscapeDetect:Z

.field private isLightDetect:Z

.field private isMotionDetect:Z

.field private isPortraitDetect:Z

.field private isSingleCodeDetect:Z

.field private ispData:[F

.field private isp_ExpIndex:F

.field private isp_FocusDis:F

.field private isp_Lux:F

.field private lLux:F

.field private lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

.field private mAccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mAccValue:F

.field private mCodeCompressedTexture:I

.field private mCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCodeTexture16_9:I

.field private mCodeTexture4_3:I

.field private mDSTexture128x128:I

.field private mDSTexture32x32_1:[I

.field private mDSTexture64x64:I

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mFinalHistTexture:I

.field private mFrameBuffer:[I

.field private mFrameRate:F

.field private mImgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLightList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMeanAcc:F

.field private mMeanOcc:F

.field private mMotionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionHandle:[I

.field private mProgram:[I

.field private mQRPos:[I

.field private mTextureCoordHandle:[I

.field private mTextureMat:I

.field private mTexturePic:I

.field private mTextureSkymsk0:I

.field private mTextureSkymsk180:I

.field private mTextureSkymsk270:I

.field private mTextureSkymsk90:I

.field private mTextureUnitId:I

.field private mTextureVegmsk0:I

.field private mTextureVegmsk180:I

.field private mTextureVegmsk270:I

.field private mTextureVegmsk90:I

.field private maxLength:I

.field private meanDegree:[F

.field private midSub:D

.field private motionFrameIndex:J

.field private motiontime:J

.field private pixelBuf:Ljava/nio/ByteBuffer;

.field private pixelData:[B

.field private preFlag:[I

.field private previewHeight:I

.field private previewTexture:I

.field private previewWidth:I

.field private qrInfo:[I

.field private resultHistgramU:[I

.field private resultHistgramV:[I

.field private resultHistgramY:[I

.field private rgbCct:F

.field private rgbData:[I

.field private rgbLux:F

.field private roiH:I

.field private roiW:I

.field private roiX:I

.field private roiY:I

.field private sceneFrameIndex:J

.field private sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

.field private sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

.field private start:J

.field private startBlockCPU:J

.field private startCode:J

.field private startDownsize:J

.field private startFrameRate:J

.field private startHisto:J

.field private startLandscape:J

.field private startLight:J

.field private subFlag:Z

.field private textureVerticeBlend:[F

.field private textureVerticesBuffer:Ljava/nio/FloatBuffer;

.field private textureVerticesFBOBuffer:Ljava/nio/FloatBuffer;

.field private textureVerticesFBOBuffer180:Ljava/nio/FloatBuffer;

.field private textureVerticesFBOBuffer270:Ljava/nio/FloatBuffer;

.field private textureVerticesFBOBuffer90:Ljava/nio/FloatBuffer;

.field private textureVerticesPreviewBuffer:Ljava/nio/FloatBuffer;

.field private textureVerticesRatioFBOBuffer:Ljava/nio/FloatBuffer;

.field private timeDetectEnd:J

.field private timeDetectStart:J

.field private tmpBuffer:Ljava/nio/ByteBuffer;

.field private vertShader_HistoU:Ljava/lang/String;

.field private vertShader_HistoV:Ljava/lang/String;

.field private vertShader_HistoY:Ljava/lang/String;

.field private vertShader_Pre:Ljava/lang/String;

.field private verticesBuffer:Ljava/nio/FloatBuffer;

.field private w:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/16 v3, 0x8

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [[D

    new-array v1, v4, [D

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-array v2, v4, [D

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v4, [D

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->degreeBound:[[D

    .line 167
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawOrder:[S

    .line 169
    new-array v0, v3, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesPreview:[F

    .line 176
    new-array v0, v3, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesRatioFBO:[F

    .line 183
    new-array v0, v3, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBO:[F

    .line 190
    new-array v0, v3, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBO90:[F

    .line 197
    new-array v0, v3, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBO180:[F

    .line 204
    new-array v0, v3, [F

    fill-array-data v0, :array_9

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBO270:[F

    .line 211
    new-array v0, v3, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->squareVertices:[F

    .line 286
    sput-boolean v5, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isISPDataUsable:Z

    .line 344
    sput-boolean v5, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isFlashOnFlag:Z

    return-void

    .line 80
    nop

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fdccccccccccccdL    # 0.45
    .end array-data

    :array_1
    .array-data 8
        0x3fe199999999999aL    # 0.55
        0x3fdccccccccccccdL    # 0.45
    .end array-data

    :array_2
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fdeb851eb851eb8L    # 0.48
    .end array-data

    .line 167
    :array_3
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data

    .line 169
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 176
    :array_5
    .array-data 4
        0x0
        0x3f600000    # 0.875f
        0x0
        0x3e000000    # 0.125f
        0x3f800000    # 1.0f
        0x3e000000    # 0.125f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
    .end array-data

    .line 183
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 190
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 197
    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 204
    :array_9
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 211
    :array_a
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    const/16 v4, 0x100

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    .line 59
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isMotionDetect:Z

    .line 60
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isPortraitDetect:Z

    .line 61
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDocumentDetect:Z

    .line 62
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isLightDetect:Z

    .line 63
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isLandscapeDetect:Z

    .line 64
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isCodeDetect:Z

    .line 65
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->is1DCodeDetect:Z

    .line 66
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->is2DCodeDetect:Z

    .line 67
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isInOutdoorDetect:Z

    .line 220
    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccValue:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanAcc:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanOcc:F

    .line 223
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->subFlag:Z

    .line 227
    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DY:[[F

    .line 228
    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DYRotation:[[F

    .line 229
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    .line 230
    const/16 v0, 0x31

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->blockY:[F

    .line 231
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_src:[F

    .line 232
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoU_src:[F

    .line 233
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoV_src:[F

    .line 234
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_dst:[F

    .line 235
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramY:[I

    .line 236
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramU:[I

    .line 237
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramV:[I

    .line 238
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    .line 239
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->tmpBuffer:Ljava/nio/ByteBuffer;

    .line 243
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    .line 244
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->preFlag:[I

    .line 245
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->qrInfo:[I

    .line 246
    const v0, 0x12c000

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    .line 247
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->codeData:[B

    .line 248
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->dataYUV:[B

    .line 249
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    div-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->dataThld:[B

    .line 250
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->dataROI:[B

    .line 251
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelData:[B

    .line 252
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelBuf:Ljava/nio/ByteBuffer;

    .line 257
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    .line 258
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    .line 259
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    .line 260
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameBuffer:[I

    .line 261
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture32x32_1:[I

    .line 287
    const/16 v0, 0x28

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    .line 288
    const/16 v0, 0xd

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->ispData:[F

    .line 289
    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->featureVector:[F

    .line 291
    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbLux:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbCct:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lLux:F

    .line 294
    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_ExpIndex:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_Lux:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_FocusDis:F

    .line 297
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_thresRGBLux:F

    .line 298
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbData:[I

    .line 299
    const/16 v0, 0xa00

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_previewWidth:I

    .line 300
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_previewHeight:I

    .line 301
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_DownsampleCodeWidth:I

    .line 302
    const/16 v0, 0x195

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_DownsampleCodeHeight:I

    .line 303
    const/16 v0, 0xb4

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_CompressedCodeWidth:I

    .line 304
    const/16 v0, 0x195

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_CompressedCodeHeight:I

    .line 306
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    .line 307
    const/16 v0, 0x195

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    .line 309
    const/16 v0, 0xb4

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeWidth:I

    .line 310
    const/16 v0, 0x195

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeHeight:I

    .line 312
    const/16 v0, 0x122

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresExpLow:I

    const/16 v0, 0x140

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresExpHigh1:I

    const/16 v0, 0x14a

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresExpHigh2:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresLuxHigh:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresRGBLuxLow:I

    .line 317
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countLight:I

    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countAcc:I

    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countOcc:I

    .line 321
    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->motionFrameIndex:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->frame:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->startFrameRate:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->endFrameRate:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->currentFps:J

    .line 328
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    .line 329
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isSingleCodeDetect:Z

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PREIVEW:Z

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_COMPRESSED:Z

    .line 332
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PICTURESIZE_CHANGED:Z

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mImgList:Ljava/util/List;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeList:Ljava/util/List;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mLightList:Ljava/util/List;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMotionList:Ljava/util/List;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccList:Ljava/util/List;

    .line 341
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/smartengine/SceneType;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 342
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/smartengine/SceneType;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 361
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->initDefault()V

    .line 362
    sput-object p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->instance:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    .line 363
    return-void

    .line 238
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    const/16 v4, 0x100

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    .line 59
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isMotionDetect:Z

    .line 60
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isPortraitDetect:Z

    .line 61
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDocumentDetect:Z

    .line 62
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isLightDetect:Z

    .line 63
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isLandscapeDetect:Z

    .line 64
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isCodeDetect:Z

    .line 65
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->is1DCodeDetect:Z

    .line 66
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->is2DCodeDetect:Z

    .line 67
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isInOutdoorDetect:Z

    .line 220
    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccValue:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanAcc:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanOcc:F

    .line 223
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->subFlag:Z

    .line 227
    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DY:[[F

    .line 228
    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DYRotation:[[F

    .line 229
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    .line 230
    const/16 v0, 0x31

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->blockY:[F

    .line 231
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_src:[F

    .line 232
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoU_src:[F

    .line 233
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoV_src:[F

    .line 234
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_dst:[F

    .line 235
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramY:[I

    .line 236
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramU:[I

    .line 237
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramV:[I

    .line 238
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    .line 239
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->tmpBuffer:Ljava/nio/ByteBuffer;

    .line 243
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    .line 244
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->preFlag:[I

    .line 245
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->qrInfo:[I

    .line 246
    const v0, 0x12c000

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    .line 247
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->codeData:[B

    .line 248
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->dataYUV:[B

    .line 249
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    div-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->dataThld:[B

    .line 250
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->dataROI:[B

    .line 251
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelData:[B

    .line 252
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->maxLength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelBuf:Ljava/nio/ByteBuffer;

    .line 257
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    .line 258
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    .line 259
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    .line 260
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameBuffer:[I

    .line 261
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture32x32_1:[I

    .line 287
    const/16 v0, 0x28

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    .line 288
    const/16 v0, 0xd

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->ispData:[F

    .line 289
    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->featureVector:[F

    .line 291
    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbLux:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbCct:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lLux:F

    .line 294
    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_ExpIndex:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_Lux:F

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_FocusDis:F

    .line 297
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_thresRGBLux:F

    .line 298
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbData:[I

    .line 299
    const/16 v0, 0xa00

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_previewWidth:I

    .line 300
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_previewHeight:I

    .line 301
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_DownsampleCodeWidth:I

    .line 302
    const/16 v0, 0x195

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_DownsampleCodeHeight:I

    .line 303
    const/16 v0, 0xb4

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_CompressedCodeWidth:I

    .line 304
    const/16 v0, 0x195

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_CompressedCodeHeight:I

    .line 306
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    .line 307
    const/16 v0, 0x195

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    .line 309
    const/16 v0, 0xb4

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeWidth:I

    .line 310
    const/16 v0, 0x195

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeHeight:I

    .line 312
    const/16 v0, 0x122

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresExpLow:I

    const/16 v0, 0x140

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresExpHigh1:I

    const/16 v0, 0x14a

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresExpHigh2:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresLuxHigh:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresRGBLuxLow:I

    .line 317
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countLight:I

    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countAcc:I

    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countOcc:I

    .line 321
    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->motionFrameIndex:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->frame:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->startFrameRate:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->endFrameRate:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->currentFps:J

    .line 328
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    .line 329
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isSingleCodeDetect:Z

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PREIVEW:Z

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_COMPRESSED:Z

    .line 332
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PICTURESIZE_CHANGED:Z

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mImgList:Ljava/util/List;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeList:Ljava/util/List;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mLightList:Ljava/util/List;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMotionList:Ljava/util/List;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccList:Ljava/util/List;

    .line 341
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/smartengine/SceneType;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 342
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/smartengine/SceneType;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 352
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->context:Landroid/content/Context;

    .line 353
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->initDefault()V

    .line 354
    sput-object p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->instance:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    .line 355
    return-void

    .line 238
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private Compressed(IIIIIII[B)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "index"    # I
    .param p6, "src_tex"    # I
    .param p7, "dst_tex"    # I
    .param p8, "data"    # [B

    .prologue
    .line 1864
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v1, v1, p5

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1865
    const-string v1, "glUseProgram"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1867
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v1, v1, p5

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1868
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v1, v1, p5

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBOBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1870
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v1, v1, p5

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1871
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v1, v1, p5

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1873
    sget v1, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1874
    const-string v1, "glActiveTexture"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1875
    const/16 v1, 0xde1

    invoke-static {v1, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1876
    const-string v1, "glBindTexture"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1877
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v1, v1, p5

    const-string/jumbo v2, "sampler2d"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    sget v2, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D0:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1878
    const-string v1, "glUniform1i"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1879
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v1, v1, p5

    const-string/jumbo v2, "width"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1880
    const-string v1, "glUniform1f"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1881
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v1, v1, p5

    const-string v2, "height"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1882
    const-string v1, "glUniform1f"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1884
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameBuffer:[I

    const/4 v2, 0x0

    aget v6, v1, v2

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glUseFBO(IIIIZII)V

    .line 1885
    const/4 v1, 0x4

    sget-object v2, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawOrder:[S

    array-length v2, v2

    const/16 v3, 0x1403

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1886
    const-string v1, "glDrawElements"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1888
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v1, v1, p5

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1889
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v1, v1, p5

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1891
    const/16 v5, 0x1908

    const/16 v6, 0x1401

    iget-object v7, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelBuf:Ljava/nio/ByteBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1892
    const-string v1, "glReadPixels"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1894
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelData:[B

    .line 1895
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p8

    array-length v1, v0

    if-ge v8, v1, :cond_0

    .line 1896
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelData:[B

    aget-byte v1, v1, v8

    aput-byte v1, p8, v8

    .line 1895
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1898
    :cond_0
    return-void
.end method

.method private codeDetect([B[IIIIIII[I[B[B[B)I
    .locals 15
    .param p1, "yuv420sp"    # [B
    .param p2, "hist"    # [I
    .param p3, "height"    # I
    .param p4, "width"    # I
    .param p5, "roix"    # I
    .param p6, "roiy"    # I
    .param p7, "roih"    # I
    .param p8, "roiw"    # I
    .param p9, "qrPos"    # [I
    .param p10, "yuv"    # [B
    .param p11, "thld"    # [B
    .param p12, "roi"    # [B

    .prologue
    .line 1791
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x168

    const/16 v7, 0x280

    iget-boolean v9, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isSingleCodeDetect:Z

    iget-object v10, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->preFlag:[I

    iget-object v11, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->qrInfo:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v8, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-static/range {v0 .. v14}, Lcom/lenovo/scg/camera/smartengine/NativeDetect;->jniLePhInputQRCode([B[IIIIIII[IZ[I[I[B[B[B)I

    move-result v0

    return v0
.end method

.method private downsize(IIIIIIIZ)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "index"    # I
    .param p6, "src_tex"    # I
    .param p7, "dst_tex"    # I
    .param p8, "isPreview"    # Z

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v0, v0, p5

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1807
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v0, v0, p5

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1813
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v0, v0, p5

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBOBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1814
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v0, v0, p5

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1815
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v0, v0, p5

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1817
    sget v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1818
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1819
    if-eqz p8, :cond_0

    .line 1820
    const v0, 0x8d65

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1824
    :goto_0
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v0, v0, p5

    const-string/jumbo v1, "sampler2d"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1827
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1832
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameBuffer:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    move v2, p3

    move v3, p4

    move v6, p7

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glUseFBO(IIIIZII)V

    .line 1838
    const/4 v0, 0x4

    sget-object v1, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawOrder:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1839
    const-string v0, "glDrawElements"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1848
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v0, v0, p5

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1849
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v0, v0, p5

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1851
    return-void

    .line 1822
    :cond_0
    const/16 v0, 0xde1

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0
.end method

.method private draw()Lcom/lenovo/scg/camera/smartengine/SceneType;
    .locals 24

    .prologue
    .line 911
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_previewWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewWidth:I

    .line 912
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_previewHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    .line 913
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_DownsampleCodeWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    .line 914
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_DownsampleCodeHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    .line 915
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_CompressedCodeWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeWidth:I

    .line 916
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_CompressedCodeHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeHeight:I

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    .line 921
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->frame:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->startFrameRate:J

    .line 924
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->frame:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->frame:J

    .line 926
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 927
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->motionFrameIndex:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->motionFrameIndex:J

    .line 929
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccValue:F

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isGsensorSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 931
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->getAcc()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccValue:F

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccValue:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    aput v4, v2, v3

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getMotion()Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccValue:F

    const/high16 v4, 0x420c0000    # 35.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;->jitterRatio:D

    .line 936
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->shouldDetect()Z

    move-result v2

    if-nez v2, :cond_2

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->onRemoveList()V

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->onSetList()V

    .line 939
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 940
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->motionFrameIndex:J

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->reset()V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 1266
    :goto_0
    return-object v2

    .line 945
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isLightSensorSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getLSensorData()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lLux:F

    .line 948
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBSensorSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getCctLux()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbData:[I

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbData:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbLux:F

    .line 952
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isISPSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isISPDataUsable:Z

    if-eqz v2, :cond_5

    .line 953
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->getISPData()[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->ispData:[F

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->ispData:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_ExpIndex:F

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->ispData:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_Lux:F

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->ispData:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_FocusDis:F

    .line 957
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_Lux:F

    const/high16 v3, 0x43ce0000    # 412.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 958
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isFlashOnFlag:Z

    .line 962
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isInOutdoorDetect:Z

    if-eqz v2, :cond_8

    .line 963
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_ExpIndex:F

    const/high16 v3, 0x438c0000    # 280.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getEnvironment()Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;->flag:I

    .line 975
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isMotionDetect:Z

    if-eqz v2, :cond_9

    .line 978
    const/4 v2, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->motionDetect2(II)I

    move-result v21

    .line 980
    .local v21, "motionFlag":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMotionList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMotionList:Ljava/util/List;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getMotion()Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMotionList:Ljava/util/List;

    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->sceneFeatureFilter(Ljava/util/List;II)I

    move-result v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;->flag:I

    .line 993
    .end local v21    # "motionFlag":I
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    .line 995
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 997
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 960
    :cond_6
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isFlashOnFlag:Z

    goto :goto_1

    .line 966
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getEnvironment()Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;->flag:I

    goto :goto_2

    .line 969
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getEnvironment()Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Environment;->reset()V

    goto :goto_2

    .line 987
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getMotion()Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;->reset()V

    goto :goto_3

    .line 1001
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    .line 1005
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    const/16 v2, 0x31

    move/from16 v0, v17

    if-ge v0, v2, :cond_b

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DY:[[F

    div-int/lit8 v3, v17, 0x7

    aget-object v2, v2, v3

    rem-int/lit8 v3, v17, 0x7

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DYRotation:[[F

    div-int/lit8 v3, v17, 0x7

    aget-object v2, v2, v3

    rem-int/lit8 v3, v17, 0x7

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1005
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1009
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PREIVEW:Z

    if-eqz v2, :cond_d

    .line 1010
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PICTURESIZE_CHANGED:Z

    if-eqz v2, :cond_c

    .line 1011
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewTexture:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeTexture4_3:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PREIVEW:Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->downsize(IIIIIIIZ)V

    .line 1023
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    .line 1025
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_f

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 1027
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 1013
    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewTexture:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeTexture16_9:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PREIVEW:Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->downsize(IIIIIIIZ)V

    goto :goto_5

    .line 1016
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PICTURESIZE_CHANGED:Z

    if-eqz v2, :cond_e

    .line 1017
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewTexture:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeTexture4_3:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PREIVEW:Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->downsize(IIIIIIIZ)V

    goto :goto_5

    .line 1019
    :cond_e
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewTexture:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeTexture16_9:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PREIVEW:Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->downsize(IIIIIIIZ)V

    goto/16 :goto_5

    .line 1031
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_COMPRESSED:Z

    if-eqz v2, :cond_10

    .line 1032
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PICTURESIZE_CHANGED:Z

    if-eqz v2, :cond_11

    .line 1033
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeHeight:I

    const/16 v7, 0x8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeTexture4_3:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeCompressedTexture:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->codeData:[B

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Compressed(IIIIIII[B)V

    .line 1039
    :cond_10
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    .line 1041
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_12

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 1043
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 1035
    :cond_11
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeHeight:I

    const/16 v7, 0x8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeTexture16_9:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeCompressedTexture:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->codeData:[B

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Compressed(IIIIIII[B)V

    goto :goto_6

    .line 1051
    :cond_12
    const/4 v2, 0x7

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DY:[[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->codeData:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->getBlock(II[[F[B)[[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DYRotation:[[F

    .line 1053
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    .line 1055
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_21

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 1057
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 1067
    .end local v17    # "i":I
    :cond_13
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    .line 1071
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isCodeDetect:Z

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->is2DCodeDetect:Z

    if-eqz v2, :cond_20

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    if-eqz v2, :cond_14

    .line 1073
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_14

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    const/4 v3, 0x0

    aput v3, v2, v17

    .line 1073
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1077
    .end local v17    # "i":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->codeData:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiY:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiH:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiW:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->dataYUV:[B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->dataThld:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->dataROI:[B

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->codeDetect([B[IIIIIII[I[B[B[B)I

    move-result v16

    .line 1079
    .local v16, "codeFlag":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    .line 1081
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 1083
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 1087
    :cond_15
    const/4 v15, 0x3

    .line 1088
    .local v15, "QRNum":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-le v2, v15, :cond_16

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    const/4 v3, 0x0

    aput v15, v2, v3

    .line 1092
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeList:Ljava/util/List;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getCode()Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeList:Ljava/util/List;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->sceneFeatureFilter(Ljava/util/List;II)I

    move-result v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/SceneType$Code;->flag:I

    .line 1095
    const/16 v23, 0x0

    .line 1096
    .local v23, "qrCoordPositions":[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getCode()Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Code;->isNormal()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-lez v2, :cond_1f

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    new-array v0, v2, [Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    move-object/from16 v23, v0

    .line 1100
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_8
    move-object/from16 v0, v23

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_1f

    .line 1101
    new-instance v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    invoke-direct {v2}, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;-><init>()V

    aput-object v2, v23, v17

    .line 1102
    aget-object v2, v23, v17

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    mul-int/lit8 v5, v17, 0x8

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    .line 1103
    aget-object v2, v23, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    mul-int/lit8 v4, v17, 0x8

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    .line 1104
    aget-object v2, v23, v17

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    mul-int/lit8 v5, v17, 0x8

    add-int/lit8 v5, v5, 0x4

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    .line 1105
    aget-object v2, v23, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    mul-int/lit8 v4, v17, 0x8

    add-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    .line 1106
    aget-object v2, v23, v17

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    mul-int/lit8 v5, v17, 0x8

    add-int/lit8 v5, v5, 0x6

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    .line 1107
    aget-object v2, v23, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    mul-int/lit8 v4, v17, 0x8

    add-int/lit8 v4, v4, 0x5

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    .line 1108
    aget-object v2, v23, v17

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    mul-int/lit8 v5, v17, 0x8

    add-int/lit8 v5, v5, 0x8

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    .line 1109
    aget-object v2, v23, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mQRPos:[I

    mul-int/lit8 v4, v17, 0x8

    add-int/lit8 v4, v4, 0x7

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    .line 1110
    aget-object v2, v23, v17

    iget v2, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    if-gez v2, :cond_1b

    .line 1111
    aget-object v2, v23, v17

    const/4 v3, 0x0

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    .line 1115
    :cond_17
    :goto_9
    aget-object v2, v23, v17

    iget v2, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    if-gez v2, :cond_1c

    .line 1116
    aget-object v2, v23, v17

    const/4 v3, 0x0

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    .line 1120
    :cond_18
    :goto_a
    aget-object v2, v23, v17

    iget v2, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    if-gez v2, :cond_1d

    .line 1121
    aget-object v2, v23, v17

    const/4 v3, 0x0

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    .line 1125
    :cond_19
    :goto_b
    aget-object v2, v23, v17

    iget v2, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    if-gez v2, :cond_1e

    .line 1126
    aget-object v2, v23, v17

    const/4 v3, 0x0

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    .line 1100
    :cond_1a
    :goto_c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 1112
    :cond_1b
    aget-object v2, v23, v17

    iget v2, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_17

    .line 1113
    aget-object v2, v23, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    goto :goto_9

    .line 1117
    :cond_1c
    aget-object v2, v23, v17

    iget v2, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_18

    .line 1118
    aget-object v2, v23, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    goto :goto_a

    .line 1122
    :cond_1d
    aget-object v2, v23, v17

    iget v2, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_19

    .line 1123
    aget-object v2, v23, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    goto :goto_b

    .line 1127
    :cond_1e
    aget-object v2, v23, v17

    iget v2, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1a

    .line 1128
    aget-object v2, v23, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    goto :goto_c

    .line 1134
    .end local v17    # "i":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getCode()Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v0, v2, Lcom/lenovo/scg/camera/smartengine/SceneType$Code;->qrCoordPositions:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    .line 1136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    .line 1138
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_21

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 1140
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 1145
    .end local v15    # "QRNum":I
    .end local v16    # "codeFlag":I
    .end local v23    # "qrCoordPositions":[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getCode()Lcom/lenovo/scg/camera/smartengine/SceneType$Code;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Code;->reset()V

    .line 1259
    :cond_21
    :goto_d
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->frame:J

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    .line 1260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->startFrameRate:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->endFrameRate:J

    .line 1261
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->frame:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->endFrameRate:J

    div-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->currentFps:J

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->currentFps:J

    long-to-float v4, v4

    aput v4, v2, v3

    .line 1263
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->frame:J

    .line 1266
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 1151
    :cond_23
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    .line 1155
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_e
    const/16 v2, 0x100

    move/from16 v0, v17

    if-ge v0, v2, :cond_24

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_src:[F

    const/4 v3, 0x0

    aput v3, v2, v17

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoU_src:[F

    const/4 v3, 0x0

    aput v3, v2, v17

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_src:[F

    const/4 v3, 0x0

    aput v3, v2, v17

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_dst:[F

    div-int/lit8 v3, v17, 0x10

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1160
    move/from16 v0, v17

    int-to-double v2, v0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    mul-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v18, v0

    .line 1161
    .local v18, "indx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_dst:[F

    const/4 v3, 0x0

    aput v3, v2, v18

    .line 1155
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    .line 1164
    .end local v18    # "indx":I
    :cond_24
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PREIVEW:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_src:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoU_src:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoV_src:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_dst:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoProgram(IZ[F[F[F[F)V

    .line 1166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    .line 1168
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_25

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 1170
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    .line 1171
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 1180
    :cond_25
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_f
    const/4 v2, 0x7

    move/from16 v0, v19

    if-ge v0, v2, :cond_27

    .line 1181
    const/16 v17, 0x0

    :goto_10
    const/4 v2, 0x7

    move/from16 v0, v17

    if-ge v0, v2, :cond_26

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->blockY:[F

    mul-int/lit8 v3, v19, 0x7

    add-int v3, v3, v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DYRotation:[[F

    aget-object v4, v4, v19

    aget v4, v4, v17

    aput v4, v2, v3

    .line 1181
    add-int/lit8 v17, v17, 0x1

    goto :goto_10

    .line 1180
    :cond_26
    add-int/lit8 v19, v19, 0x1

    goto :goto_f

    .line 1187
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isLightDetect:Z

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    if-nez v2, :cond_2b

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->blockY:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_src:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoU_src:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoV_src:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->histoY_dst:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->featureVector:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lightDetect([F[F[F[F[F[F)I

    move-result v20

    .line 1190
    .local v20, "lightFlag":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    .line 1192
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_28

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 1194
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    .line 1195
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 1199
    :cond_28
    const/16 v22, 0x0

    .line 1200
    .local v22, "oSensorX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isOsensorSupport()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getOSensorData()[F

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getOSensorData()[F

    move-result-object v2

    const/4 v3, 0x1

    aget v22, v2, v3

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    const/4 v3, 0x1

    aput v22, v2, v3

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getOSensorData()[F

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v2, v3

    .line 1209
    :cond_29
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_2a

    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getInstance()Lcom/lenovo/scg/camera/smartengine/CameraState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/CameraState;->isSetFPS()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getInstance()Lcom/lenovo/scg/camera/smartengine/CameraState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getCurrentFPS()J

    move-result-wide v2

    const-wide/16 v4, 0x19

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    .line 1210
    const/16 v20, 0x0

    .line 1215
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mLightList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mLightList:Ljava/util/List;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getLight()Lcom/lenovo/scg/camera/smartengine/SceneType$Light;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mLightList:Ljava/util/List;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->sceneFeatureFilter(Ljava/util/List;II)I

    move-result v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/SceneType$Light;->flag:I

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getLight()Lcom/lenovo/scg/camera/smartengine/SceneType$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Light;->isDetectedType()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    .line 1223
    .end local v20    # "lightFlag":I
    .end local v22    # "oSensorX":F
    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    .line 1225
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_2c

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 1227
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    .line 1228
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 1220
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getLight()Lcom/lenovo/scg/camera/smartengine/SceneType$Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Light;->reset()V

    goto :goto_11

    .line 1235
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isLandscapeDetect:Z

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    if-nez v2, :cond_2d

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getLandscape()Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->landscapeDetect(I)I

    move-result v3

    iput v3, v2, Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;->flag:I

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getLandscape()Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;->isDetectedType()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    .line 1242
    :goto_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    .line 1244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectStart:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    .line 1246
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->timeDetectEnd:J

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_21

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 1248
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDetectedType:Z

    .line 1249
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto/16 :goto_0

    .line 1239
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getLandscape()Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SceneType$Landscape;->reset()V

    goto :goto_12

    .line 1256
    .end local v17    # "i":I
    .end local v19    # "j":I
    :cond_2e
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneFrameIndex:J

    goto/16 :goto_d
.end method

.method public static enableISPData(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 802
    sput-boolean p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isISPDataUsable:Z

    .line 803
    return-void
.end method

.method private getAcc()F
    .locals 7

    .prologue
    .line 1510
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getGSensorData()[F

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->accDiff([F)F

    move-result v0

    .line 1511
    .local v0, "acc":F
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1512
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    const/4 v3, 0x0

    .line 1514
    .local v3, "sumacc":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1515
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    .line 1514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1518
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1519
    .local v1, "accImg":F
    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countAcc:I

    if-nez v4, :cond_1

    .line 1520
    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanAcc:F

    .line 1521
    const/4 v4, 0x1

    iput v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countAcc:I

    .line 1525
    :goto_1
    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanAcc:F

    return v4

    .line 1523
    :cond_1
    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanAcc:F

    const v5, 0x3f666666    # 0.9f

    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanAcc:F

    sub-float v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanAcc:F

    goto :goto_1
.end method

.method private getBlock(II[[F[B)[[F
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "avgY2"    # [[F
    .param p4, "data"    # [B

    .prologue
    const/4 v8, 0x0

    .line 1352
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_COMPRESSED:Z

    if-eqz v6, :cond_2

    .line 1353
    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    div-int v4, v6, p1

    .line 1354
    .local v4, "stepx":I
    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    div-int v5, v6, p2

    .line 1356
    .local v5, "stepy":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    mul-int v6, p2, v5

    if-ge v2, v6, :cond_1

    .line 1358
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    mul-int v6, p1, v4

    if-ge v3, v6, :cond_0

    .line 1360
    div-int v0, v3, v4

    .line 1361
    .local v0, "binx":I
    div-int v1, v2, v5

    .line 1363
    .local v1, "biny":I
    aget-object v6, p3, v1

    aget v7, v6, v0

    iget v8, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v3

    aget-byte v8, p4, v8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v6, v0

    .line 1358
    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    .line 1356
    .end local v0    # "binx":I
    .end local v1    # "biny":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1366
    .end local v3    # "j":I
    :cond_1
    const/4 v2, 0x0

    :goto_2
    mul-int v6, p1, p2

    if-ge v2, v6, :cond_5

    .line 1367
    div-int v6, v2, p1

    aget-object v6, p3, v6

    rem-int v7, v2, p1

    aget v8, v6, v7

    mul-int v9, v4, v5

    mul-int/lit16 v9, v9, 0xff

    div-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    div-float/2addr v8, v9

    aput v8, v6, v7

    .line 1368
    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DYRotation:[[F

    rem-int v7, v2, p1

    aget-object v6, v6, v7

    array-length v7, p3

    div-int v8, v2, p1

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    div-int v8, v2, p1

    aget-object v8, p3, v8

    rem-int v9, v2, p1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 1366
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1372
    .end local v2    # "i":I
    .end local v4    # "stepx":I
    .end local v5    # "stepy":I
    :cond_2
    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    iget v7, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    invoke-static {v8, v8, v6, v7}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->readData(IIII)[B

    move-result-object p4

    .line 1373
    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    div-int v4, v6, p1

    .line 1374
    .restart local v4    # "stepx":I
    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    div-int v5, v6, p2

    .line 1376
    .restart local v5    # "stepy":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    mul-int v6, p2, v5

    if-ge v2, v6, :cond_4

    .line 1378
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_4
    mul-int v6, p1, v4

    mul-int/lit8 v6, v6, 0x4

    if-ge v3, v6, :cond_3

    .line 1380
    div-int/lit8 v6, v3, 0x4

    div-int v0, v6, v4

    .line 1381
    .restart local v0    # "binx":I
    div-int v1, v2, v5

    .line 1383
    .restart local v1    # "biny":I
    aget-object v6, p3, v1

    aget v7, v6, v0

    iget v8, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    mul-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v3

    aget-byte v8, p4, v8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v6, v0

    .line 1378
    add-int/lit8 v3, v3, 0x4

    goto :goto_4

    .line 1376
    .end local v0    # "binx":I
    .end local v1    # "biny":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1386
    .end local v3    # "j":I
    :cond_4
    const/4 v2, 0x0

    :goto_5
    mul-int v6, p1, p2

    if-ge v2, v6, :cond_5

    .line 1387
    div-int v6, v2, p1

    aget-object v6, p3, v6

    rem-int v7, v2, p1

    aget v8, v6, v7

    mul-int v9, v4, v5

    mul-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    div-float/2addr v8, v9

    aput v8, v6, v7

    .line 1388
    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DYRotation:[[F

    rem-int v7, v2, p1

    aget-object v6, v6, v7

    array-length v7, p3

    div-int v8, v2, p1

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    div-int v8, v2, p1

    aget-object v8, p3, v8

    rem-int v9, v2, p1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 1386
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1392
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->block2DYRotation:[[F

    return-object v6
.end method

.method public static getFlashOpenStatus()Z
    .locals 1

    .prologue
    .line 805
    sget-boolean v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isFlashOnFlag:Z

    return v0
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/smartengine/IVCScene;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->instance:Lcom/lenovo/scg/camera/smartengine/IVCScene;

    return-object v0
.end method

.method private histoProgram(IZ[F[F[F[F)V
    .locals 13
    .param p1, "index1"    # I
    .param p2, "isPreview"    # Z
    .param p3, "histoY_Src"    # [F
    .param p4, "histoU_Src"    # [F
    .param p5, "histoV_Src"    # [F
    .param p6, "histoY_Dst"    # [F

    .prologue
    .line 1403
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v0, 0x100

    if-ge v8, v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramY:[I

    const/4 v1, 0x0

    aput v1, v0, v8

    .line 1405
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramU:[I

    const/4 v1, 0x0

    aput v1, v0, v8

    .line 1406
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramV:[I

    const/4 v1, 0x0

    aput v1, v0, v8

    .line 1403
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v0, v0, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1412
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v0, v0, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1415
    if-eqz p2, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v0, v0, p1

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesPreviewBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1420
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v0, v0, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1421
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v0, v0, p1

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1423
    sget v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1424
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1425
    if-eqz p2, :cond_2

    .line 1426
    const v0, 0x8d65

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1431
    :goto_2
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v0, v0, p1

    const-string/jumbo v1, "sampler2d"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1433
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1435
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/16 v3, 0x80

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameBuffer:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture128x128:I

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glUseFBO(IIIIZII)V

    .line 1436
    const/4 v0, 0x4

    sget-object v1, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawOrder:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1437
    const-string v0, "glDrawElements"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v0, v0, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1440
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v0, v0, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1445
    const/4 v8, 0x4

    :goto_3
    const/4 v0, 0x6

    if-gt v8, v0, :cond_3

    .line 1447
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v0, v0, v8

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1448
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1450
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v0, v0, v8

    const-string v1, "blockWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib1f(IF)V

    .line 1451
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v0, v0, v8

    const-string v1, "blockHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib1f(IF)V

    .line 1452
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v0, v0, v8

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1453
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v0, v0, v8

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1455
    sget v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1456
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1457
    const/16 v0, 0xde1

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture128x128:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1458
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v0, v0, v8

    const-string/jumbo v1, "samplerHistogram"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sget v1, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1461
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1463
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x100

    const/16 v3, 0x10

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameBuffer:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFinalHistTexture:I

    invoke-static/range {v0 .. v6}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glUseFBO(IIIIZII)V

    .line 1466
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1467
    const v0, 0x8006

    invoke-static {v0}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    .line 1468
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1469
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x4000

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1470
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v0, v0, v8

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1445
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v0, v0, p1

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBOBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto/16 :goto_1

    .line 1428
    :cond_2
    const/16 v0, 0xde1

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTexturePic:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_2

    .line 1479
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x100

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramY:[I

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramU:[I

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramV:[I

    iget-object v7, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->tmpBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v0 .. v7}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGetHistogram(IIII[I[I[ILjava/nio/ByteBuffer;)V

    .line 1481
    const/4 v12, 0x0

    .line 1482
    .local v12, "sumYBin":I
    const/4 v10, 0x0

    .line 1483
    .local v10, "sumUBin":I
    const/4 v11, 0x0

    .line 1484
    .local v11, "sumVBin":I
    const/4 v8, 0x0

    :goto_4
    const/16 v0, 0x100

    if-ge v8, v0, :cond_4

    .line 1485
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramY:[I

    aget v0, v0, v8

    add-int/2addr v12, v0

    .line 1486
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramU:[I

    aget v0, v0, v8

    add-int/2addr v10, v0

    .line 1487
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramV:[I

    aget v0, v0, v8

    add-int/2addr v11, v0

    .line 1484
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1490
    :cond_4
    const/4 v8, 0x0

    :goto_5
    const/16 v0, 0x100

    if-ge v8, v0, :cond_5

    .line 1491
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramY:[I

    aget v0, v0, v8

    int-to-float v0, v0

    int-to-float v1, v12

    div-float/2addr v0, v1

    aput v0, p3, v8

    .line 1492
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramU:[I

    aget v0, v0, v8

    int-to-float v0, v0

    int-to-float v1, v10

    div-float/2addr v0, v1

    aput v0, p4, v8

    .line 1493
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramV:[I

    aget v0, v0, v8

    int-to-float v0, v0

    int-to-float v1, v11

    div-float/2addr v0, v1

    aput v0, p5, v8

    .line 1494
    int-to-double v0, v8

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    mul-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v9, v0

    .line 1495
    .local v9, "indx":I
    aget v0, p6, v9

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->resultHistgramY:[I

    aget v1, v1, v8

    int-to-float v1, v1

    int-to-float v2, v12

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p6, v9

    .line 1490
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1504
    .end local v9    # "indx":I
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1505
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1506
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1507
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x40

    const/4 v5, 0x1

    .line 847
    const/16 v1, 0x9

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_Pre:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Pre:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v7

    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_Pre:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Weighted:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_Pre:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_RGB2YUV:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v8

    const/4 v2, 0x3

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_Pre:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Region:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_HistoY:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Histo:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_HistoU:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Histo:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_HistoV:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Histo:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_Pre:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Sub:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_Pre:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Compressed:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->SHADER_NAME:[[Ljava/lang/String;

    .line 859
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->SHADER_NAME:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->SHADER_NAME:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->SHADER_NAME:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCreateProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 861
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v2, v2, v0

    const-string/jumbo v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 862
    const-string v1, "glGetAttribLocation"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v2, v2, v0

    const-string v3, "inputTextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 864
    const-string v1, "glGetAttribLocation"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameBuffer:[I

    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenFBO()I

    move-result v2

    aput v2, v1, v7

    .line 869
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameBuffer:[I

    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenFBO()I

    move-result v2

    aput v2, v1, v5

    .line 871
    const/16 v1, 0x10

    const/16 v2, 0x10

    sget-object v3, Lcom/lenovo/scg/camera/smartengine/MatrixData;->MatrixByte:[B

    invoke-static {v1, v2, v5, v3}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureMat:I

    .line 873
    sget-object v1, Lcom/lenovo/scg/camera/smartengine/MatrixData;->MatrixSkymskByte0:[B

    invoke-static {v6, v6, v5, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureSkymsk0:I

    .line 875
    sget-object v1, Lcom/lenovo/scg/camera/smartengine/MatrixData;->MatrixVegmskByte0:[B

    invoke-static {v6, v6, v5, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureVegmsk0:I

    .line 877
    sget-object v1, Lcom/lenovo/scg/camera/smartengine/MatrixData;->MatrixSkymskByte90:[B

    invoke-static {v6, v6, v5, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureSkymsk90:I

    .line 879
    sget-object v1, Lcom/lenovo/scg/camera/smartengine/MatrixData;->MatrixVegmskByte90:[B

    invoke-static {v6, v6, v5, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureVegmsk90:I

    .line 881
    sget-object v1, Lcom/lenovo/scg/camera/smartengine/MatrixData;->MatrixSkymskByte180:[B

    invoke-static {v6, v6, v5, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureSkymsk180:I

    .line 883
    sget-object v1, Lcom/lenovo/scg/camera/smartengine/MatrixData;->MatrixVegmskByte180:[B

    invoke-static {v6, v6, v5, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureVegmsk180:I

    .line 885
    sget-object v1, Lcom/lenovo/scg/camera/smartengine/MatrixData;->MatrixSkymskByte270:[B

    invoke-static {v6, v6, v5, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureSkymsk270:I

    .line 887
    sget-object v1, Lcom/lenovo/scg/camera/smartengine/MatrixData;->MatrixVegmskByte270:[B

    invoke-static {v6, v6, v5, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureVegmsk270:I

    .line 889
    invoke-static {v6, v6, v5, v9}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture64x64:I

    .line 891
    const/16 v1, 0x80

    const/16 v2, 0x80

    invoke-static {v1, v2, v7, v9}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture128x128:I

    .line 893
    const/16 v1, 0x100

    const/16 v2, 0x10

    invoke-static {v1, v2, v7, v9}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFinalHistTexture:I

    .line 895
    const/16 v1, 0x2d0

    const/16 v2, 0x195

    invoke-static {v1, v2, v5, v9}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeTexture16_9:I

    .line 897
    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-static {v1, v2, v5, v9}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeTexture4_3:I

    .line 899
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeWidth:I

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->CompressedCodeHeight:I

    invoke-static {v1, v2, v5, v9}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeCompressedTexture:I

    .line 901
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 902
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture32x32_1:[I

    const/16 v2, 0x20

    const/16 v3, 0x20

    invoke-static {v2, v3, v5, v9}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGenTexImage2D(III[B)I

    move-result v2

    aput v2, v1, v0

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 904
    :cond_1
    return-void
.end method

.method private initDefault()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 374
    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiX:I

    .line 375
    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiY:I

    .line 376
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiW:I

    .line 377
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiH:I

    .line 378
    const/16 v0, 0xa00

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewWidth:I

    .line 379
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    .line 380
    return-void
.end method

.method private landscapeDetect(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1661
    const/4 v0, 0x0

    .line 1663
    .local v0, "flag":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBSensorSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBDataUsable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1664
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbLux:F

    const v2, 0x466a6000    # 15000.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1665
    const/4 v0, 0x1

    .line 1678
    :goto_0
    return v0

    .line 1666
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbLux:F

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1667
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->landscapeGPUDetect(I)I

    move-result v0

    goto :goto_0

    .line 1669
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isLightSensorSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lLux:F

    const v2, 0x44bb8000    # 1500.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbLux:F

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1670
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->landscapeGPUDetect(I)I

    move-result v0

    goto :goto_0

    .line 1672
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1676
    :cond_3
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->landscapeGPUDetect(I)I

    move-result v0

    goto :goto_0
.end method

.method private landscapeGPUDetect(I)I
    .locals 24
    .param p1, "index"    # I

    .prologue
    .line 1688
    const/4 v9, 0x0

    .line 1689
    .local v9, "flag":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v2, v2, p1

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1690
    const-string v2, "glUseProgram"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v2, v2, p1

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v2, v2, p1

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v2, v2, p1

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v2, v2, p1

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBOBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1697
    sget v2, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1698
    const-string v2, "glActiveTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1699
    const v2, 0x8d65

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewTexture:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1700
    const-string v2, "glBindTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1701
    sget v2, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE1:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1702
    const-string v2, "glActiveTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1704
    const/16 v22, 0x0

    .line 1705
    .local v22, "texture":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getOrientation()I

    move-result v11

    .line 1706
    .local v11, "oritation":I
    if-nez v11, :cond_1

    .line 1707
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureSkymsk0:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1708
    const-string v2, "glBindTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureVegmsk0:I

    move/from16 v22, v0

    .line 1726
    :cond_0
    :goto_0
    sget v2, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE2:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1727
    const-string v2, "glActiveTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1728
    const/16 v2, 0xde1

    move/from16 v0, v22

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1729
    const-string v2, "glBindTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v2, v2, p1

    const-string/jumbo v3, "sampler2d"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D0:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1732
    const-string v2, "glUniform1i"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v2, v2, p1

    const-string/jumbo v3, "sampler2dSkymsk"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D1:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1734
    const-string v2, "glUniform1i"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v2, v2, p1

    const-string/jumbo v3, "sampler2dVegmsk"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D2:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1736
    const-string v2, "glUniform1i"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1738
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x40

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameBuffer:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture64x64:I

    invoke-static/range {v2 .. v8}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glUseFBO(IIIIZII)V

    .line 1739
    const/4 v2, 0x4

    sget-object v3, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawOrder:[S

    array-length v3, v3

    const/16 v4, 0x1403

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1740
    const-string v2, "glDrawElements"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v2, v2, p1

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v2, v2, p1

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1749
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x40

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelBuf:Ljava/nio/ByteBuffer;

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1750
    const-string v2, "glReadPixels"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelData:[B

    .line 1753
    const-wide/16 v18, 0x0

    .local v18, "nSumSky":J
    const-wide/16 v20, 0x0

    .line 1754
    .local v20, "nSumVeg":J
    const-wide/16 v16, 0x0

    .local v16, "nRank":D
    const-wide/16 v12, 0x0

    .local v12, "nAvgSky":D
    const-wide/16 v14, 0x0

    .line 1756
    .local v14, "nAvgVeg":D
    const/16 v23, 0x1000

    .line 1758
    .local v23, "ylength":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v23

    if-ge v10, v0, :cond_4

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelData:[B

    mul-int/lit8 v3, v10, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long v18, v18, v2

    .line 1760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->pixelData:[B

    mul-int/lit8 v3, v10, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long v20, v20, v2

    .line 1758
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1711
    .end local v10    # "i":I
    .end local v12    # "nAvgSky":D
    .end local v14    # "nAvgVeg":D
    .end local v16    # "nRank":D
    .end local v18    # "nSumSky":J
    .end local v20    # "nSumVeg":J
    .end local v23    # "ylength":I
    :cond_1
    const/16 v2, 0x5a

    if-ne v11, v2, :cond_2

    .line 1712
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureSkymsk90:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1713
    const-string v2, "glBindTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1714
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureVegmsk90:I

    move/from16 v22, v0

    goto/16 :goto_0

    .line 1716
    :cond_2
    const/16 v2, 0xb4

    if-ne v11, v2, :cond_3

    .line 1717
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureSkymsk180:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1718
    const-string v2, "glBindTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1719
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureVegmsk180:I

    move/from16 v22, v0

    goto/16 :goto_0

    .line 1721
    :cond_3
    const/16 v2, 0x10e

    if-ne v11, v2, :cond_0

    .line 1722
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureSkymsk270:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1723
    const-string v2, "glBindTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureVegmsk270:I

    move/from16 v22, v0

    goto/16 :goto_0

    .line 1762
    .restart local v10    # "i":I
    .restart local v12    # "nAvgSky":D
    .restart local v14    # "nAvgVeg":D
    .restart local v16    # "nRank":D
    .restart local v18    # "nSumSky":J
    .restart local v20    # "nSumVeg":J
    .restart local v23    # "ylength":I
    :cond_4
    move-wide/from16 v0, v18

    long-to-double v2, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    move/from16 v0, v23

    int-to-double v4, v0

    div-double v12, v2, v4

    .line 1763
    move-wide/from16 v0, v20

    long-to-double v2, v0

    move/from16 v0, v23

    int-to-double v4, v0

    div-double v14, v2, v4

    .line 1764
    add-double v2, v12, v14

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double v16, v2, v4

    .line 1766
    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v2, v16, v2

    if-lez v2, :cond_5

    sget-boolean v2, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isISPDataUsable:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_FocusDis:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 1768
    const/4 v9, 0x1

    .line 1775
    :goto_2
    return v9

    .line 1770
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private lightDetect([F[F[F[F[F[F)I
    .locals 10
    .param p1, "blockY"    # [F
    .param p2, "histYL"    # [F
    .param p3, "histU"    # [F
    .param p4, "histV"    # [F
    .param p5, "histYS"    # [F
    .param p6, "featureVector"    # [F

    .prologue
    .line 1288
    const/4 v0, 0x3

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    .line 1289
    .local v7, "sceneDegree":[F
    const/4 v9, 0x0

    .line 1291
    .local v9, "sceneFlag":I
    invoke-static/range {p1 .. p6}, Lcom/lenovo/scg/camera/smartengine/SceneFeature;->sceneFeatureExtraction([F[F[F[F[F[F)V

    .line 1292
    sget-object v1, Lcom/lenovo/scg/camera/smartengine/SceneFeature;->alphaVector:[D

    sget-object v2, Lcom/lenovo/scg/camera/smartengine/SceneFeature;->indxVector:[I

    sget-object v3, Lcom/lenovo/scg/camera/smartengine/SceneFeature;->dirVector:[I

    sget-object v4, Lcom/lenovo/scg/camera/smartengine/SceneFeature;->thldVector:[D

    const/4 v5, 0x3

    const/16 v6, 0x32

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v7}, Lcom/lenovo/scg/camera/smartengine/SceneFeature;->sceneDegreeComputation([F[D[I[I[DII[F)V

    .line 1294
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    const/4 v0, 0x3

    if-ge v8, v0, :cond_3

    .line 1295
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countLight:I

    if-nez v0, :cond_2

    .line 1296
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    aget v1, v7, v8

    aput v1, v0, v8

    .line 1297
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countLight:I

    .line 1302
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    aget v0, v0, v8

    float-to-double v0, v0

    sget-object v2, Lcom/lenovo/scg/camera/smartengine/IVCScene;->degreeBound:[[D

    aget-object v2, v2, v8

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    const/4 v1, 0x1

    aput v1, v0, v8

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    aget v0, v0, v8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    aget v0, v0, v8

    float-to-double v0, v0

    sget-object v2, Lcom/lenovo/scg/camera/smartengine/IVCScene;->degreeBound:[[D

    aget-object v2, v2, v8

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    const/4 v1, 0x0

    aput v1, v0, v8

    .line 1294
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1299
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    aget v1, v0, v8

    const v2, 0x3f666666    # 0.9f

    aget v3, v7, v8

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    goto :goto_1

    .line 1310
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 1311
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isISPSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isISPDataUsable:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_ExpIndex:F

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresExpLow:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1312
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isLightSensorSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lLux:F

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresLuxHigh:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_ExpIndex:F

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresExpHigh1:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_FocusDis:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 1314
    const/4 v9, 0x1

    .line 1339
    :goto_2
    if-nez v9, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBDataUsable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbLux:F

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_thresRGBLux:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 1340
    const/4 v9, 0x2

    .line 1342
    :cond_4
    return v9

    .line 1315
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    .line 1316
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-int/lit8 v9, v0, 0x3

    goto :goto_2

    .line 1318
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    mul-int/lit8 v9, v0, 0x2

    goto :goto_2

    .line 1321
    :cond_7
    const/4 v9, 0x1

    goto :goto_2

    .line 1323
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 1324
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isISPSupport()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isISPDataUsable:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_ExpIndex:F

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresExpHigh2:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBDataUsable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->rgbLux:F

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresRGBLuxLow:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 1326
    :cond_a
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit8 v9, v0, 0x1

    goto/16 :goto_2

    .line 1328
    :cond_b
    const/4 v9, 0x3

    goto/16 :goto_2

    .line 1330
    :cond_c
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->meanDegree:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 1331
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isISPSupport()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isISPDataUsable:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isp_ExpIndex:F

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->Light_ThresExpHigh2:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 1332
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->flag:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit8 v9, v0, 0x1

    goto/16 :goto_2

    .line 1334
    :cond_d
    const/4 v9, 0x2

    goto/16 :goto_2

    .line 1337
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1288
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private motionDetect2(II)I
    .locals 23
    .param p1, "index1"    # I
    .param p2, "index2"    # I

    .prologue
    .line 1535
    const/4 v13, 0x0

    .line 1536
    .local v13, "flag":I
    const/16 v18, 0x0

    .line 1537
    .local v18, "preTextId":I
    const/4 v11, 0x1

    .line 1538
    .local v11, "currTextId":I
    const/4 v12, 0x2

    .line 1539
    .local v12, "fboTextId":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->subFlag:Z

    if-nez v2, :cond_0

    .line 1540
    const/16 v18, 0x1

    .line 1541
    const/4 v11, 0x0

    .line 1543
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->subFlag:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->subFlag:Z

    .line 1546
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/16 v6, 0x20

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewTexture:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture32x32_1:[I

    aget v9, v2, v11

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PREIVEW:Z

    move-object/from16 v2, p0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v10}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->downsize(IIIIIIIZ)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v2, v2, p2

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1553
    const-string v2, "glUseProgram"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v2, v2, p2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v2, v2, p2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v2, v2, p2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v2, v2, p2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBOBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1560
    sget v2, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1561
    const-string v2, "glActiveTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1562
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture32x32_1:[I

    aget v3, v3, v11

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1563
    const-string v2, "glBindTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1564
    sget v2, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE1:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1565
    const-string v2, "glActiveTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1566
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture32x32_1:[I

    aget v3, v3, v18

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1567
    const-string v2, "glBindTexture"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v2, v2, p2

    const-string/jumbo v3, "sub1"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D0:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1569
    const-string v2, "glUniform1i"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mProgram:[I

    aget v2, v2, p2

    const-string/jumbo v3, "sub2"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D1:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1571
    const-string v2, "glUniform1i"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1573
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameBuffer:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mDSTexture32x32_1:[I

    aget v8, v8, v12

    invoke-static/range {v2 .. v8}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glUseFBO(IIIIZII)V

    .line 1574
    const/4 v2, 0x4

    sget-object v3, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawOrder:[S

    array-length v3, v3

    const/16 v4, 0x1403

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1575
    const-string v2, "glDrawElements"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mPositionHandle:[I

    aget v2, v2, p2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureCoordHandle:[I

    aget v2, v2, p2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1584
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v6, 0xa

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->tmpBuffer:Ljava/nio/ByteBuffer;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x428c0000    # 70.0f

    aput v10, v8, v9

    invoke-static/range {v2 .. v8}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glGetFeature(IIIIILjava/nio/ByteBuffer;[F)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v16, v0

    .line 1586
    .local v16, "num":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getOSensorData()[F

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->accDiff([F)F

    move-result v17

    .line 1588
    .local v17, "occ":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mImgList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mImgList:Ljava/util/List;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mImgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v15, v2, [D

    .line 1592
    .local v15, "mSubNum":[D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v2, v15

    if-ge v14, v2, :cond_2

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mImgList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v15, v14

    .line 1592
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1543
    .end local v14    # "i":I
    .end local v15    # "mSubNum":[D
    .end local v16    # "num":I
    .end local v17    # "occ":F
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1595
    .restart local v14    # "i":I
    .restart local v15    # "mSubNum":[D
    .restart local v16    # "num":I
    .restart local v17    # "occ":F
    :cond_2
    invoke-static {v15}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->medianFilter([D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->midSub:D

    .line 1597
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countOcc:I

    if-nez v2, :cond_3

    .line 1598
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanOcc:F

    .line 1599
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->countOcc:I

    .line 1603
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    const/16 v3, 0xd

    aput v17, v2, v3

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    const/16 v3, 0xe

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanOcc:F

    aput v4, v2, v3

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->midSub:D

    double-to-float v4, v4

    aput v4, v2, v3

    .line 1607
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanAcc:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    const/16 v19, 0x1

    .line 1608
    .local v19, "rule1":Z
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanAcc:F

    const v3, 0x3e99999a    # 0.3f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    const/16 v20, 0x1

    .line 1609
    .local v20, "rule2":Z
    :goto_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->midSub:D

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    const/16 v21, 0x1

    .line 1611
    .local v21, "rule3":Z
    :goto_5
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v17, v2

    if-gez v2, :cond_7

    const/16 v22, 0x1

    .line 1635
    .local v22, "rule4":Z
    :goto_6
    if-eqz v19, :cond_8

    .line 1636
    const/4 v13, 0x2

    .line 1653
    :goto_7
    return v13

    .line 1601
    .end local v19    # "rule1":Z
    .end local v20    # "rule2":Z
    .end local v21    # "rule3":Z
    .end local v22    # "rule4":Z
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanOcc:F

    const v3, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanOcc:F

    sub-float v4, v17, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMeanOcc:F

    goto :goto_2

    .line 1607
    :cond_4
    const/16 v19, 0x0

    goto :goto_3

    .line 1608
    .restart local v19    # "rule1":Z
    :cond_5
    const/16 v20, 0x0

    goto :goto_4

    .line 1609
    .restart local v20    # "rule2":Z
    :cond_6
    const/16 v21, 0x0

    goto :goto_5

    .line 1611
    .restart local v21    # "rule3":Z
    :cond_7
    const/16 v22, 0x0

    goto :goto_6

    .line 1637
    .restart local v22    # "rule4":Z
    :cond_8
    if-eqz v22, :cond_a

    .line 1638
    if-eqz v21, :cond_9

    .line 1639
    const/4 v13, 0x1

    goto :goto_7

    .line 1641
    :cond_9
    const/4 v13, 0x0

    goto :goto_7

    .line 1643
    :cond_a
    const/4 v13, 0x2

    goto :goto_7
.end method

.method public static setISPData([B)Z
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 789
    if-eqz p0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 792
    .local v0, "cameraISP":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->setISPString([Ljava/lang/String;)V

    .line 793
    sput-boolean v1, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isISPDataUsable:Z

    .line 797
    .end local v0    # "cameraISP":Ljava/lang/String;
    :goto_0
    return v1

    .line 796
    :cond_0
    sput-boolean v2, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isISPDataUsable:Z

    move v1, v2

    .line 797
    goto :goto_0
.end method

.method private shouldDetect()Z
    .locals 2

    .prologue
    .line 1274
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccValue:F

    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SensorService;->unregisterSensor()V

    .line 692
    return-void
.end method

.method public disable(I)Z
    .locals 4
    .param p1, "flag"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 477
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    .line 478
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isMotionDetect:Z

    .line 480
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 481
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isPortraitDetect:Z

    .line 483
    :cond_1
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 484
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDocumentDetect:Z

    .line 486
    :cond_2
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 487
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isLightDetect:Z

    .line 489
    :cond_3
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 490
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isLandscapeDetect:Z

    .line 492
    :cond_4
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 493
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isCodeDetect:Z

    .line 495
    :cond_5
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 496
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->is1DCodeDetect:Z

    .line 498
    :cond_6
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 499
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->is2DCodeDetect:Z

    .line 501
    :cond_7
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 502
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isInOutdoorDetect:Z

    .line 504
    :cond_8
    return v3
.end method

.method public enable(I)Z
    .locals 3
    .param p1, "flag"    # I

    .prologue
    const/4 v2, 0x1

    .line 442
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    .line 443
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isMotionDetect:Z

    .line 445
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 446
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isPortraitDetect:Z

    .line 448
    :cond_1
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 449
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isDocumentDetect:Z

    .line 451
    :cond_2
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 452
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isLightDetect:Z

    .line 454
    :cond_3
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 455
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isLandscapeDetect:Z

    .line 457
    :cond_4
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 458
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isCodeDetect:Z

    .line 460
    :cond_5
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 461
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->is1DCodeDetect:Z

    .line 463
    :cond_6
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 464
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->is2DCodeDetect:Z

    .line 466
    :cond_7
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 467
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isInOutdoorDetect:Z

    .line 469
    :cond_8
    return v2
.end method

.method public getCameraSettings()[I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 835
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 836
    .local v1, "cameraSettings":[I
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->getISPData()[F

    move-result-object v0

    .line 837
    .local v0, "ISP":[F
    aget v2, v0, v5

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    aget v2, v0, v6

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 838
    const/4 v2, 0x0

    aget v3, v0, v5

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    .line 839
    aget v2, v0, v6

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v5

    .line 842
    :cond_0
    return-object v1

    .line 835
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public getDebugValues()[F
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->debugValue:[F

    return-object v0
.end method

.method public getEnvLightData()[I
    .locals 3

    .prologue
    .line 813
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 815
    .local v0, "cctLux":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    if-nez v1, :cond_1

    .line 816
    const/4 v0, 0x0

    .line 826
    .end local v0    # "cctLux":[I
    :cond_0
    :goto_0
    return-object v0

    .line 819
    .restart local v0    # "cctLux":[I
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->isLightSensorSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getLSensorData()F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 823
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getCctLux()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->getCctLux()[I

    move-result-object v0

    goto :goto_0

    .line 813
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public getFrameRate()F
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFrameRate:F

    return v0
.end method

.method public initShader()V
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->onSetList()V

    .line 727
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getSplitPointData(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticeBlend:[F

    .line 728
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticeBlend:[F

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glToFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 731
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesRatioFBO:[F

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glToFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesRatioFBOBuffer:Ljava/nio/FloatBuffer;

    .line 734
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBO:[F

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glToFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBOBuffer:Ljava/nio/FloatBuffer;

    .line 735
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBO90:[F

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glToFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBOBuffer90:Ljava/nio/FloatBuffer;

    .line 736
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBO180:[F

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glToFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBOBuffer180:Ljava/nio/FloatBuffer;

    .line 737
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBO270:[F

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glToFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesFBOBuffer270:Ljava/nio/FloatBuffer;

    .line 740
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesPreview:[F

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glToFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->textureVerticesPreviewBuffer:Ljava/nio/FloatBuffer;

    .line 743
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->squareVertices:[F

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glToFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->verticesBuffer:Ljava/nio/FloatBuffer;

    .line 746
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawOrder:[S

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glToShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->drawListBuffer:Ljava/nio/ShortBuffer;

    .line 748
    const-string v0, "/res/raw/ivc_vshader_preview.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_Pre:Ljava/lang/String;

    .line 749
    const-string v0, "/res/raw/ivc_vshader_histoy.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_HistoY:Ljava/lang/String;

    .line 750
    const-string v0, "/res/raw/ivc_vshader_histou.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_HistoU:Ljava/lang/String;

    .line 751
    const-string v0, "/res/raw/ivc_vshader_histov.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->vertShader_HistoV:Ljava/lang/String;

    .line 753
    const-string v0, "/res/raw/ivc_fshader_preview.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Pre:Ljava/lang/String;

    .line 754
    const-string v0, "/res/raw/ivc_fshader_sub.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Sub:Ljava/lang/String;

    .line 755
    const-string v0, "/res/raw/ivc_fshder_histo.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Histo:Ljava/lang/String;

    .line 756
    const-string v0, "/res/raw/ivc_fshader_region.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Region:Ljava/lang/String;

    .line 757
    const-string v0, "/res/raw/ivc_fshader_rgb2yuv.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_RGB2YUV:Ljava/lang/String;

    .line 758
    const-string v0, "/res/raw/ivc_fshader_weighted.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Weighted:Ljava/lang/String;

    .line 759
    const-string v0, "/res/raw/ivc_fshader_compressed.sh"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/ShaderUtil;->loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->fragShader_Compressed:Ljava/lang/String;

    .line 760
    return-void
.end method

.method public onRemoveList()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccList:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 782
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mImgList:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mImgList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 783
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeList:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 784
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMotionList:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMotionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 785
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mLightList:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mLightList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 786
    return-void
.end method

.method public onSetList()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 763
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 764
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mAccList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 767
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mImgList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 769
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 770
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mCodeList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 772
    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 773
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mMotionList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 775
    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_4

    .line 776
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mLightList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 778
    :cond_4
    return-void
.end method

.method public pictureBind(I)Z
    .locals 2
    .param p1, "textureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 401
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewTexture:I

    .line 402
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->init()V

    .line 403
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->h:I

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->w:I

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->y:I

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->x:I

    .line 404
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->firstDraw:Z

    .line 406
    return v1
.end method

.method public pictureBind([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->onRemoveList()V

    .line 699
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->onSetList()V

    .line 700
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SceneType;->reset()V

    .line 701
    return-void
.end method

.method public sceneTypeDetector()Lcom/lenovo/scg/camera/smartengine/SceneType;
    .locals 10

    .prologue
    const v9, 0x8d40

    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 651
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getInstance()Lcom/lenovo/scg/camera/smartengine/CameraState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getSnapState()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getInstance()Lcom/lenovo/scg/camera/smartengine/CameraState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getFocusState()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getInstance()Lcom/lenovo/scg/camera/smartengine/CameraState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getFocusState()I

    move-result v3

    if-eq v3, v8, :cond_2

    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getInstance()Lcom/lenovo/scg/camera/smartengine/CameraState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/smartengine/CameraState;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 655
    :cond_0
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->midSub:D

    .line 656
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getMotion()Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;->flag:I

    if-ne v3, v6, :cond_1

    .line 657
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/smartengine/SceneType;->getMotion()Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;

    move-result-object v3

    iput v7, v3, Lcom/lenovo/scg/camera/smartengine/SceneType$Motion;->flag:I

    .line 659
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 685
    :goto_0
    return-object v3

    .line 662
    :cond_2
    const-string v3, "IVC Detector Start"

    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 663
    invoke-static {v9}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 664
    .local v1, "status":I
    const v3, 0x8cd5

    if-eq v1, v3, :cond_3

    .line 665
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Framebuffer Status Error ! status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 668
    :cond_3
    new-array v2, v4, [I

    .line 669
    .local v2, "viewport":[I
    new-array v0, v6, [I

    .line 670
    .local v0, "framebuffer":[I
    const/16 v3, 0xba2

    invoke-static {v3, v2, v7}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 671
    const v3, 0x8ca6

    invoke-static {v3, v0, v7}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 672
    const-string v3, "glGetIntegerv"

    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 675
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->draw()Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 680
    aget v3, v2, v7

    aget v4, v2, v6

    const/4 v5, 0x2

    aget v5, v2, v5

    aget v6, v2, v8

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 681
    aget v3, v0, v7

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 682
    const-string v3, "glBindFramebuffer"

    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 684
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/smartengine/SceneType;->copy()Lcom/lenovo/scg/camera/smartengine/SceneType;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->lastSceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    .line 685
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sceneType:Lcom/lenovo/scg/camera/smartengine/SceneType;

    goto :goto_0
.end method

.method public setCanvasSize(IIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->firstDraw:Z

    if-eqz v0, :cond_0

    .line 516
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->x:I

    .line 517
    iput p2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->y:I

    .line 518
    iput p3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->w:I

    .line 519
    iput p4, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->h:I

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->firstDraw:Z

    .line 522
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCodeROI(IIII)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 610
    int-to-float v0, p2

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiX:I

    .line 611
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    div-int v0, p1, v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiY:I

    .line 612
    int-to-float v0, p3

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiW:I

    .line 613
    int-to-float v0, p4

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->previewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->DownsampleCodeHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->roiH:I

    .line 614
    const/4 v0, 0x1

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->context:Landroid/content/Context;

    .line 387
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/IVCScene;->setSupprotSensor(I)Z

    .line 394
    return-void
.end method

.method public setPictureParameter(II)Z
    .locals 7
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    const/16 v6, 0x1e0

    const/16 v5, 0x195

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 531
    int-to-float v3, p1

    int-to-float v4, p2

    div-float v0, v3, v4

    .line 532
    .local v0, "pictureRatio":F
    const v3, 0x3fdc28f6    # 1.72f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const v3, 0x3fe8f5c3    # 1.82f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 533
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_previewWidth:I

    .line 534
    iput p2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_previewHeight:I

    .line 535
    const/16 v3, 0x2d0

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_DownsampleCodeWidth:I

    .line 536
    iput v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_DownsampleCodeHeight:I

    .line 537
    const/16 v3, 0xb4

    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_CompressedCodeWidth:I

    .line 538
    iput v5, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_CompressedCodeHeight:I

    .line 539
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PICTURESIZE_CHANGED:Z

    .line 551
    :goto_0
    return v1

    .line 541
    :cond_0
    const v3, 0x3fa3d70a    # 1.28f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    const v3, 0x3fb0a3d7    # 1.38f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 542
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_previewWidth:I

    .line 543
    iput p2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_previewHeight:I

    .line 544
    const/16 v2, 0x280

    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_DownsampleCodeWidth:I

    .line 545
    iput v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_DownsampleCodeHeight:I

    .line 546
    const/16 v2, 0xa0

    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_CompressedCodeWidth:I

    .line 547
    iput v6, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->_CompressedCodeHeight:I

    .line 548
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->IS_PICTURESIZE_CHANGED:Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 551
    goto :goto_0
.end method

.method public setPosUvVertices([F)Z
    .locals 2
    .param p1, "vertices"    # [F

    .prologue
    .line 570
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 572
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSingleCodeDetect(Z)Z
    .locals 1
    .param p1, "isSingleDetect"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->isSingleCodeDetect:Z

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public setSupprotSensor(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SensorService;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->sensorService:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->registerSensor(I)Z

    move-result v0

    return v0
.end method

.method public setTextureUnitID(I)Z
    .locals 1
    .param p1, "unitId"    # I

    .prologue
    .line 582
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mTextureUnitId:I

    .line 583
    const v0, 0x84c0

    add-int/2addr v0, p1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE0:I

    .line 584
    const v0, 0x84c1

    add-int/2addr v0, p1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE1:I

    .line 585
    const v0, 0x84c2

    add-int/2addr v0, p1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE2:I

    .line 586
    const v0, 0x84c3

    add-int/2addr v0, p1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE3:I

    .line 587
    const v0, 0x84c4

    add-int/2addr v0, p1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE4:I

    .line 588
    const v0, 0x84c5

    add-int/2addr v0, p1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE5:I

    .line 589
    const v0, 0x84c6

    add-int/2addr v0, p1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE6:I

    .line 590
    const v0, 0x84c7

    add-int/2addr v0, p1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE7:I

    .line 591
    const v0, 0x84c8

    add-int/2addr v0, p1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE8:I

    .line 593
    add-int/lit8 v0, p1, 0x0

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D0:I

    .line 594
    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D1:I

    .line 595
    add-int/lit8 v0, p1, 0x2

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D2:I

    .line 596
    add-int/lit8 v0, p1, 0x3

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D3:I

    .line 597
    add-int/lit8 v0, p1, 0x4

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D4:I

    .line 598
    add-int/lit8 v0, p1, 0x5

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D5:I

    .line 599
    add-int/lit8 v0, p1, 0x6

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D6:I

    .line 600
    add-int/lit8 v0, p1, 0x7

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D7:I

    .line 601
    add-int/lit8 v0, p1, 0x8

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D8:I

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public setTransformMatrix([F)Z
    .locals 1
    .param p1, "matrix"    # [F

    .prologue
    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method public updateFaceRect([Landroid/hardware/Camera$Face;)Z
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/IVCScene;->mFaces:[Landroid/hardware/Camera$Face;

    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method public updateSensoryData()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x1

    return v0
.end method
