.class final enum Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;
.super Ljava/lang/Enum;
.source "Panorama2DLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ARROW_POSITION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

.field public static final enum LEFT_EDGE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

.field public static final enum RIGHT_EGDE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    const-string v1, "LEFT_EDGE"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->LEFT_EDGE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    new-instance v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    const-string v1, "RIGHT_EGDE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->RIGHT_EGDE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->LEFT_EDGE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->RIGHT_EGDE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->$VALUES:[Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->$VALUES:[Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    return-object v0
.end method
