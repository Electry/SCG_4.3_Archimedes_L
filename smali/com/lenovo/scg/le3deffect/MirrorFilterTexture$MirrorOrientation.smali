.class public final enum Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;
.super Ljava/lang/Enum;
.source "MirrorFilterTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MirrorOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

.field public static final enum MirrorHorizontal:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

.field public static final enum MirrorVerticalBottom:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

.field public static final enum MirrorVerticalTop:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    const-string v1, "MirrorHorizontal"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->MirrorHorizontal:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    .line 12
    new-instance v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    const-string v1, "MirrorVerticalBottom"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->MirrorVerticalBottom:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    .line 13
    new-instance v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    const-string v1, "MirrorVerticalTop"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->MirrorVerticalTop:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    sget-object v1, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->MirrorHorizontal:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->MirrorVerticalBottom:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->MirrorVerticalTop:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->$VALUES:[Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->$VALUES:[Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    invoke-virtual {v0}, [Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    return-object v0
.end method
