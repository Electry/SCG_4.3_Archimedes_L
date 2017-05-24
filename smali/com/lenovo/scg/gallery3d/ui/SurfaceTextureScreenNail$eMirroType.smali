.class public final enum Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;
.super Ljava/lang/Enum;
.source "SurfaceTextureScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eMirroType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

.field public static final enum MirroHorizontal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

.field public static final enum MirroNone:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

.field public static final enum MirroVertical:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    const-string v1, "MirroNone"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroNone:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    .line 290
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    const-string v1, "MirroHorizontal"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroHorizontal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    .line 292
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    const-string v1, "MirroVertical"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroVertical:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    .line 285
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroNone:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroHorizontal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroVertical:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->$VALUES:[Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

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
    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    const-class v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->$VALUES:[Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    return-object v0
.end method
