.class public final enum Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;
.super Ljava/lang/Enum;
.source "TiltShiftView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

.field public static final enum CIRCLE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

.field public static final enum LINE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->CIRCLE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    const-string v1, "LINE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->LINE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->CIRCLE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->LINE:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->$VALUES:[Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->$VALUES:[Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$MODE;

    return-object v0
.end method
