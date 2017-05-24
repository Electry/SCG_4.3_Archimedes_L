.class public final enum Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;
.super Ljava/lang/Enum;
.source "PreviewCbDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eBufState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

.field public static final enum inDeal:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

.field public static final enum inFill:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

.field public static final enum inHAL:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    const-string v1, "inHAL"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inHAL:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    new-instance v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    const-string v1, "inFill"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inFill:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    new-instance v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    const-string v1, "inDeal"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inDeal:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    sget-object v1, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inHAL:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inFill:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inDeal:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->$VALUES:[Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->$VALUES:[Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    return-object v0
.end method
