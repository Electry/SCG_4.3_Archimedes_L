.class public final enum Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;
.super Ljava/lang/Enum;
.source "Le3dGridImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/le3d/Le3dGridImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

.field public static final enum CENTER:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

.field public static final enum LEFT:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

.field public static final enum RIGHT:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->LEFT:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->RIGHT:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->CENTER:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->LEFT:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->RIGHT:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->CENTER:Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->$VALUES:[Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->$VALUES:[Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    invoke-virtual {v0}, [Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/common/le3d/Le3dGridImage$TextPosition;

    return-object v0
.end method
