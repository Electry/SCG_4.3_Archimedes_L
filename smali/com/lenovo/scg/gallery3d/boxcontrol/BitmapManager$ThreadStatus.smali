.class Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadStatus"
.end annotation


# instance fields
.field public mOptions:Landroid/graphics/BitmapFactory$Options;

.field public mState:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

.field public mThumbRequesting:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;->ALLOW:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mState:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$1;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mState:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

    sget-object v2, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;->CANCEL:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

    if-ne v1, v2, :cond_0

    .line 61
    const-string v0, "Cancel"

    .line 67
    .local v0, "s":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0

    .line 62
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mState:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

    sget-object v2, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;->ALLOW:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

    if-ne v1, v2, :cond_1

    .line 63
    const-string v0, "Allow"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 65
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    const-string v0, "?"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method
