/**
 * adam-super-game-score-board
 *
 * @author Thom Cherryhomes
 * @email  thom dot cherryhomes at gmail dot com
 * @license gpl, 3.0 - see LICENSE.md
 */

#ifndef SUBROC_H
#define SUBROC_H

typedef struct _subroc_scores
{
  char scores[8][7];
  char names[8][12];
  char sk[8][2];
  char sc[8][2];
  char rsvd1[12]; // Default name, do not touch
  char bottom[828]; // Bottom of block.
} SubrocScores;

void subroc_init(void);
void subroc_read(void);
void subroc_write(void);

#endif /* SUBROC_H */
