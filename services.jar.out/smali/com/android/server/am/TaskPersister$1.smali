.class Lcom/android/server/am/TaskPersister$1;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/TaskPersister;->restoreTasksLocked()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$1;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 8
    .param p1, "lhs"    # Lcom/android/server/am/TaskRecord;
    .param p2, "rhs"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const-wide/16 v6, 0x0

    .line 437
    iget-wide v2, p2, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iget-wide v4, p1, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long v0, v2, v4

    .line 438
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 439
    const/4 v2, -0x1

    .line 443
    :goto_0
    return v2

    .line 440
    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    .line 441
    const/4 v2, 0x1

    goto :goto_0

    .line 443
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 434
    check-cast p1, Lcom/android/server/am/TaskRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/TaskRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskPersister$1;->compare(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v0

    return v0
.end method
