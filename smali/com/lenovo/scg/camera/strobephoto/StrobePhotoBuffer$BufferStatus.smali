.class public final enum Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;
.super Ljava/lang/Enum;
.source "StrobePhotoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BufferStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

.field public static final enum Decoded:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

.field public static final enum Invalid:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

.field public static final enum Used:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

.field public static final enum WaitDecode:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Invalid:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    new-instance v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    const-string v1, "WaitDecode"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->WaitDecode:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    new-instance v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    const-string v1, "Decoded"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Decoded:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    new-instance v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    const-string v1, "Used"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Used:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    sget-object v1, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Invalid:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->WaitDecode:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Decoded:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Used:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->$VALUES:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->$VALUES:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    return-object v0
.end method
