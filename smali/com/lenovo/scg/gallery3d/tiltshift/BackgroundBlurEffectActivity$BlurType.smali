.class public final enum Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;
.super Ljava/lang/Enum;
.source "BackgroundBlurEffectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlurType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

.field public static final enum ByCircle:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

.field public static final enum ByLine:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    const-string v1, "ByCircle"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->ByCircle:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    const-string v1, "ByLine"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->ByLine:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->ByCircle:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->ByLine:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->$VALUES:[Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

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
    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    const-class v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->$VALUES:[Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    return-object v0
.end method
