.class Lcn/jingling/lib/filters/FilterFactory$1;
.super Ljava/util/HashMap;
.source "FilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/filters/FilterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class",
        "<+",
        "Lcn/jingling/lib/filters/OneKeyFilter;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3a7f5ed190add423L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string v0, "hope"

    const-class v1, Lcn/jingling/lib/filters/onekey/HopeEffect;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "halftone"

    const-class v1, Lcn/jingling/lib/filters/onekey/HalfTone;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "halftonegray"

    const-class v1, Lcn/jingling/lib/filters/onekey/HalfToneGray;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v0, "shadowandhighlight"

    const-class v1, Lcn/jingling/lib/filters/onekey/shadowAndHighlight;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "bmopi"

    const-class v1, Lcn/jingling/lib/filters/onekey/BEEPS;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "enhance1"

    const-class v1, Lcn/jingling/lib/filters/onekey/SceneEnhance;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v0, "msrcr"

    const-class v1, Lcn/jingling/lib/filters/onekey/Msrcr;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v0, "sceneprocess"

    const-class v1, Lcn/jingling/lib/filters/onekey/SceneProcess;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "dehaze"

    const-class v1, Lcn/jingling/lib/filters/onekey/DeHaze;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "bilateral"

    const-class v1, Lcn/jingling/lib/filters/onekey/Bilateral;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "denoise"

    const-class v1, Lcn/jingling/lib/filters/onekey/Denoise;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "backlight"

    const-class v1, Lcn/jingling/lib/filters/onekey/BackLight;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "lighteneye"

    const-class v1, Lcn/jingling/lib/filters/onekey/LightenEye;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "artificial"

    const-class v1, Lcn/jingling/lib/filters/onekey/BlackEyeArtificial;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v0, "whiten"

    const-class v1, Lcn/jingling/lib/filters/onekey/whiten;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v0, "whitenmopi"

    const-class v1, Lcn/jingling/lib/filters/onekey/whitenMopi;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v0, "usm"

    const-class v1, Lcn/jingling/lib/filters/onekey/usmProcess;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "lightenmopi"

    const-class v1, Lcn/jingling/lib/filters/onekey/Lighten;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "blackeye"

    const-class v1, Lcn/jingling/lib/filters/onekey/BlackEye;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "blackeyeruo"

    const-class v1, Lcn/jingling/lib/filters/onekey/BlackEyeRuo;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "facedetail"

    const-class v1, Lcn/jingling/lib/filters/onekey/FaceDetailTest;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "clomo"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraLomo;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "cliunian"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraLiunian;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "cxuancai"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraXuancai;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "cdiana"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraDiana;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "cfugu"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFugu;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "chuiyi"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraHuiyi;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "dianapath"

    const-class v1, Lcn/jingling/lib/filters/onekey/DianaPath;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "autumn"

    const-class v1, Lcn/jingling/lib/filters/onekey/Autumn;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v0, "nashiv"

    const-class v1, Lcn/jingling/lib/filters/onekey/Nashiv;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "instantpath"

    const-class v1, Lcn/jingling/lib/filters/onekey/InstantPath;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "ctianmei"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraTianmei;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "cwennuan"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraWennuan;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "crixi"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraRixi;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "cyouya"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraYouya;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "eyebrighten"

    const-class v1, Lcn/jingling/lib/filters/onekey/EyeBrighten;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "facebuffinggauss"

    const-class v1, Lcn/jingling/lib/filters/onekey/FaceBuffingGauss;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "facebuffingfft"

    const-class v1, Lcn/jingling/lib/filters/onekey/FaceBuffingFFT;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "lomocode"

    const-class v1, Lcn/jingling/lib/filters/onekey/LomoCode;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "cfoodfine"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodFine;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "cfoodfresh"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodFresh;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "cfoodhealthy"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodHealthy;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "cfoodtasty"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodTasty;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "cfoodyum"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodYum;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "cself"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraSelf;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v0, "naturalwhite"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraNaturalWhite;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "deepwhite"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraMeibai;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "cxianhuo"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraXianhuo;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "cshenchen"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraShenchen;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "holga"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraHolga;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v0, "tianmei"

    const-class v1, Lcn/jingling/lib/filters/onekey/TianMei;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "cgubao"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraGubao;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "dazzle"

    const-class v1, Lcn/jingling/lib/filters/onekey/XuanCai;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v0, "warm"

    const-class v1, Lcn/jingling/lib/filters/onekey/XuanGuang;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v0, "normalization"

    const-class v1, Lcn/jingling/lib/filters/onekey/Normalization;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "autocontrast"

    const-class v1, Lcn/jingling/lib/filters/onekey/AutoContrast;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "autocolor"

    const-class v1, Lcn/jingling/lib/filters/onekey/AutoColor;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "equlizehist"

    const-class v1, Lcn/jingling/lib/filters/onekey/HistogramEqulization;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v0, "whitecolorlevel"

    const-class v1, Lcn/jingling/lib/filters/onekey/WhiteColorLevel;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "chdr"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraHdr;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "cscenery"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraScenery;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "cfood"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFood;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "cportrait"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraPortrait;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "cdanya"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraDanya;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v0, "quhuang"

    const-class v1, Lcn/jingling/lib/filters/onekey/QuHuang;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "fleeting"

    const-class v1, Lcn/jingling/lib/filters/onekey/JiuShiGuang;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "ansel"

    const-class v1, Lcn/jingling/lib/filters/onekey/Ansel;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "country"

    const-class v1, Lcn/jingling/lib/filters/onekey/Country;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "lakepath"

    const-class v1, Lcn/jingling/lib/filters/onekey/LakePath;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "lomo10"

    const-class v1, Lcn/jingling/lib/filters/onekey/Lomo10;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "lomopath"

    const-class v1, Lcn/jingling/lib/filters/onekey/LomoPath;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v0, "propath"

    const-class v1, Lcn/jingling/lib/filters/onekey/ProPath;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "louguang"

    const-class v1, Lcn/jingling/lib/filters/onekey/LouGuang;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "louguang2"

    const-class v1, Lcn/jingling/lib/filters/onekey/LouGuang2;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v0, "time"

    const-class v1, Lcn/jingling/lib/filters/onekey/Diana;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v0, "natamaro"

    const-class v1, Lcn/jingling/lib/filters/onekey/NativeAmaro;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v0, "rotateclockwise"

    const-class v1, Lcn/jingling/lib/filters/onekey/RotateClockwise;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v0, "rotateanticlkwise"

    const-class v1, Lcn/jingling/lib/filters/onekey/RotateAntiClockwise;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "fliphorizontal"

    const-class v1, Lcn/jingling/lib/filters/onekey/FlipHorizontal;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "flipvertical"

    const-class v1, Lcn/jingling/lib/filters/onekey/FlipVertical;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v0, "old"

    const-class v1, Lcn/jingling/lib/filters/onekey/Ageing;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "ageing"

    const-class v1, Lcn/jingling/lib/filters/onekey/Archive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "heaven"

    const-class v1, Lcn/jingling/lib/filters/onekey/BanBo;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "bluetone"

    const-class v1, Lcn/jingling/lib/filters/onekey/BlueTone;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "art"

    const-class v1, Lcn/jingling/lib/filters/onekey/ClassicHDR;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "lomo"

    const-class v1, Lcn/jingling/lib/filters/onekey/ClassicLomo;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v0, "pupple"

    const-class v1, Lcn/jingling/lib/filters/onekey/DarkBlue;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v0, "romantic"

    const-class v1, Lcn/jingling/lib/filters/onekey/Dreamy;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v0, "timetravel"

    const-class v1, Lcn/jingling/lib/filters/onekey/Emission;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "etoc"

    const-class v1, Lcn/jingling/lib/filters/onekey/Etoc;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "gray"

    const-class v1, Lcn/jingling/lib/filters/onekey/Gray;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "hdr"

    const-class v1, Lcn/jingling/lib/filters/onekey/HDR;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v0, "neon"

    const-class v1, Lcn/jingling/lib/filters/onekey/NiHong;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v0, "pop"

    const-class v1, Lcn/jingling/lib/filters/onekey/Pop;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string/jumbo v0, "positive"

    const-class v1, Lcn/jingling/lib/filters/onekey/Postive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "elegant"

    const-class v1, Lcn/jingling/lib/filters/onekey/QingXin;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "classichdr"

    const-class v1, Lcn/jingling/lib/filters/onekey/ReallyClassicHDR;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v0, "singleblue"

    const-class v1, Lcn/jingling/lib/filters/onekey/SingleColorBlue;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v0, "singlecyan"

    const-class v1, Lcn/jingling/lib/filters/onekey/SingleColorCyan;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string/jumbo v0, "singlegreen"

    const-class v1, Lcn/jingling/lib/filters/onekey/SingleColorGreen;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string/jumbo v0, "singlepurple"

    const-class v1, Lcn/jingling/lib/filters/onekey/SingleColorPurple;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v0, "singlered"

    const-class v1, Lcn/jingling/lib/filters/onekey/SingleColorRed;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v0, "singleyellow"

    const-class v1, Lcn/jingling/lib/filters/onekey/SingleColorYellow;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string/jumbo v0, "sketch"

    const-class v1, Lcn/jingling/lib/filters/onekey/Sketch;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v0, "soft"

    const-class v1, Lcn/jingling/lib/filters/onekey/Soften;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string/jumbo v0, "spray"

    const-class v1, Lcn/jingling/lib/filters/onekey/Spoondrift;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v0, "sunny"

    const-class v1, Lcn/jingling/lib/filters/onekey/Sunny;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string/jumbo v0, "sweet"

    const-class v1, Lcn/jingling/lib/filters/onekey/Sweety;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string/jumbo v0, "star"

    const-class v1, Lcn/jingling/lib/filters/onekey/XingGuang;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v0, "snow"

    const-class v1, Lcn/jingling/lib/filters/onekey/XueHua;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v0, "yellow"

    const-class v1, Lcn/jingling/lib/filters/onekey/Yellow;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v0, "painting"

    const-class v1, Lcn/jingling/lib/filters/onekey/YouHua;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "jade"

    const-class v1, Lcn/jingling/lib/filters/onekey/Jade;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v0, "yanlitest"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraYanliTest;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "decolorization"

    const-class v1, Lcn/jingling/lib/filters/onekey/Decolorization;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v0, "whitebalance"

    const-class v1, Lcn/jingling/lib/filters/onekey/WhiteBalance;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "autocontrast"

    const-class v1, Lcn/jingling/lib/filters/onekey/autoContrast_1;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v0, "localenhance"

    const-class v1, Lcn/jingling/lib/filters/onekey/LocaEnhance;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "clahergb3"

    const-class v1, Lcn/jingling/lib/filters/onekey/CLAHERGB3;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "hdrsimple"

    const-class v1, Lcn/jingling/lib/filters/onekey/HDRsimple;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v0, "posterize"

    const-class v1, Lcn/jingling/lib/filters/onekey/Posterize;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "kirsch"

    const-class v1, Lcn/jingling/lib/filters/onekey/Kirsch;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "kirsch1"

    const-class v1, Lcn/jingling/lib/filters/onekey/Kirsch1;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v0, "skinbeeps"

    const-class v1, Lcn/jingling/lib/filters/onekey/SkinBEEPS;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v0, "intelligentusm"

    const-class v1, Lcn/jingling/lib/filters/onekey/IntelligentUSM;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v0, "smoothbrightskin"

    const-class v1, Lcn/jingling/lib/filters/onekey/SmoothBrightSkin;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string/jumbo v0, "shadowhighlight"

    const-class v1, Lcn/jingling/lib/filters/onekey/ShadowHighLight;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string/jumbo v0, "shadowhighlight1"

    const-class v1, Lcn/jingling/lib/filters/onekey/ShadowHighLight1;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v0, "shadowhighlight2"

    const-class v1, Lcn/jingling/lib/filters/onekey/ShadowHighLight2;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "clshadowhighlight"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraShadowHighLight;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string/jumbo v0, "original"

    const-class v1, Lcn/jingling/lib/filters/onekey/Original;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v0, "clfugu"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFuguLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "clkeren"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraKerenLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "clvivid"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraVividLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "cllomo"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraLomoLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "clrixi"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraRixiLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "clweimei"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraWeimeiLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "cmeibai"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraMeibai;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "cmenghuan"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraMenghuan;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "cqingxin"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraQingxin;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "justsmooth"

    const-class v1, Lcn/jingling/lib/filters/onekey/EffectSmoothSkinAuto;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "clenhance"

    const-class v1, Lcn/jingling/lib/filters/onekey/SceneEnhance;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v0, "clrise"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraRiseLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "clhefe"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraHefeLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "clwalden"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraWaldenLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v0, "clfuguscenery"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFuguSceneryLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v0, "cqiuse"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraQiuse;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "cllomoscenery"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraLomoSceneryLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "clfood1"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodLive1;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "clfood2"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodLive2;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "clfood3"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodLive3;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "clfood4"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodLive4;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "clfood5"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodLive5;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "clfood6"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraFoodLive6;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "cljiuguan"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraJiuguanLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "cldushi"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraDushiLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "clguangyin"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraGuangyinLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "clyazhi"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraYazhiLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v0, "clzaoan"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraZaoanLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "clvividscenery"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraVividLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "clheibai"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraHeibaiLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "clcaisefupian"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraCaiSeFuPianLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "clmidway"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraMidwayLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, "clm3"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraM3Live;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v0, "clgoldfinch"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraGoldFinchLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v0, "clmeadow"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraMeadowLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "cllouguang"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraLouguangLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v0, "clyanli"

    const-class v1, Lcn/jingling/lib/filters/onekey/CameraYanliLive;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string/jumbo v0, "watercolor"

    const-class v1, Lcn/jingling/lib/filters/onekey/WaterColor;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string/jumbo v0, "pencil"

    const-class v1, Lcn/jingling/lib/filters/onekey/Pencil;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "colorpencil"

    const-class v1, Lcn/jingling/lib/filters/onekey/ColorPencil;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "bluecolor"

    const-class v1, Lcn/jingling/lib/filters/onekey/BlueEdg;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v0, "oilpainting"

    const-class v1, Lcn/jingling/lib/filters/onekey/OilPainting;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "hopeeffect"

    const-class v1, Lcn/jingling/lib/filters/onekey/HopeEffect;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v0, "fliphorizontal"

    const-class v1, Lcn/jingling/lib/filters/onekey/FlipHorizontal;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v0, "flipvertical"

    const-class v1, Lcn/jingling/lib/filters/onekey/FlipVertical;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v0, "rotateclockwise"

    const-class v1, Lcn/jingling/lib/filters/onekey/RotateClockwise;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v0, "rotatecounter"

    const-class v1, Lcn/jingling/lib/filters/onekey/RotateCounterClockwise;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "black_eye"

    const-class v1, Lcn/jingling/lib/filters/onekey/BlackEyeAuto;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "liu_nian"

    const-class v1, Lcn/jingling/lib/filters/onekey/LiuNian;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v0, "hei_bai"

    const-class v1, Lcn/jingling/lib/filters/onekey/HeiBai;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v0, "dianapath"

    const-class v1, Lcn/jingling/lib/filters/onekey/DianaPath;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "hui_yi"

    const-class v1, Lcn/jingling/lib/filters/onekey/HuiYi;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "lomopath"

    const-class v1, Lcn/jingling/lib/filters/onekey/LomoPath;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "lou_guang"

    const-class v1, Lcn/jingling/lib/filters/onekey/LouGuang;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "louguang2"

    const-class v1, Lcn/jingling/lib/filters/onekey/LouGuang2;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v0, "shi_guang"

    const-class v1, Lcn/jingling/lib/filters/onekey/ShiGuang;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v0, "qiu_se"

    const-class v1, Lcn/jingling/lib/filters/onekey/QiuSe;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "lv_ye_xian_zong"

    const-class v1, Lcn/jingling/lib/filters/onekey/LvYeXianZong;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "lan_diao"

    const-class v1, Lcn/jingling/lib/filters/onekey/LanDiao;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v0, "shen_lan"

    const-class v1, Lcn/jingling/lib/filters/onekey/ShenLan;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v0, "meng_huan"

    const-class v1, Lcn/jingling/lib/filters/onekey/MengHuan;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "chuan_yue"

    const-class v1, Lcn/jingling/lib/filters/onekey/ChuanYue;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "hdr"

    const-class v1, Lcn/jingling/lib/filters/onekey/HDR;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "fu_gu"

    const-class v1, Lcn/jingling/lib/filters/onekey/FuGu;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v0, "ni_hong"

    const-class v1, Lcn/jingling/lib/filters/onekey/NiHong;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v0, "zheng_pian"

    const-class v1, Lcn/jingling/lib/filters/onekey/ZhengPian;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v0, "qing_xin"

    const-class v1, Lcn/jingling/lib/filters/onekey/QingXin;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v0, "xian_huo"

    const-class v1, Lcn/jingling/lib/filters/onekey/XianHuo;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v0, "dan_se_zi"

    const-class v1, Lcn/jingling/lib/filters/onekey/DanSeZi;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string/jumbo v0, "su_miao"

    const-class v1, Lcn/jingling/lib/filters/onekey/SuMiao;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v0, "ri_zhao"

    const-class v1, Lcn/jingling/lib/filters/onekey/RiZhao;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v0, "tang_shui_pian"

    const-class v1, Lcn/jingling/lib/filters/onekey/TangShuiPian;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v0, "xuan_guang"

    const-class v1, Lcn/jingling/lib/filters/onekey/XuanGuang;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v0, "piao_xue"

    const-class v1, Lcn/jingling/lib/filters/onekey/PiaoXue;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "fan_huang"

    const-class v1, Lcn/jingling/lib/filters/onekey/FanHuang;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "lomo"

    const-class v1, Lcn/jingling/lib/filters/onekey/Lomo;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string/jumbo v0, "wei_mei"

    const-class v1, Lcn/jingling/lib/filters/onekey/WeiMei;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v0, "mei_bai"

    const-class v1, Lcn/jingling/lib/filters/onekey/MeiBai;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v0, "ke_ren"

    const-class v1, Lcn/jingling/lib/filters/onekey/Keren;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v0, "fen_nen"

    const-class v1, Lcn/jingling/lib/filters/onekey/FenNen;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v0, "zi_ran"

    const-class v1, Lcn/jingling/lib/filters/onekey/ZiRan;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
